p "Create Users"

User.create!(
  email: 'user1@gmail.com',
  password: '111111',
  name: 'エマ',
  self_introduction: '音楽とご飯が大好きです！(*^^*)',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/1.jpg")
)
User.create!(
  email: 'user2@gmail.com',
  password: '111111',
  name: 'オリビア',
  self_introduction: '登録してみた',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/2.jpg")
)
User.create!(
  email: 'user3@gmail.com',
  password: '111111',
  name: 'イヴィ',
  self_introduction: 'メッセージを送ってよ！',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/3.jpg")
)
User.create!(
  email: 'user4@gmail.com',
  password: '111111',
  name: 'ノア',
  self_introduction: '大阪でバーで働いています',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/4.jpg")
)
User.create!(
  email: 'user5@gmail.com',
  password: '111111',
  name: 'アレクス',
  self_introduction: '犬を飼っていますぜ',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/5.jpg")
)
User.create!(
  email: 'user6@gmail.com',
  password: '111111',
  name: 'オリバー',
  self_introduction: '週４日くらい一人ラーメンします',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/6.jpg")
)
