class GameMode < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'コンペティティブ' },
    { id: 3, name: 'アンレート' },
    { id: 4, name: 'チームデスマッチ' },
    { id: 5, name: 'その他' },
  ]
end