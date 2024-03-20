require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end
  describe '新規募集投稿' do
    context '投稿できる場合' do
      it '必要事項を全て過不足なく入力すると投稿できる' do
        expect(@post).to be_valid
      end
    end
    context '投稿できない場合' do
      it 'game_mode_idが選択されていないと投稿できない' do
        @post.game_mode_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("ゲームモードを選択してください")
      end

      it 'contentが入力されていないと投稿できない' do
        @post.content = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("投稿内容を入力してください")
      end

      it 'userが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("ユーザーを入力してください")
      end
    end
  end
end
