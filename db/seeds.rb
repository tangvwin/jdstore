# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "a@a.com"
u.password= "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save


puts '建立6个Products'
Product.create!(title: '华为 HUAWEI P10',
description: '华为 HUAWEI P10 全网通 4GB+64GB 草木绿 移动联通电信4G手机 双卡双待',
quantity: '200',
price: '3788',
image: open("https://img10.360buyimg.com/mobilecms/s500x500_jfs/t4735/313/2135200/301418/71e21085/58d8f5d5Na3023dcb.jpg!q70.jpg"))

Product.create!(title: 'HTC U Ultra（U-1w）初绽（粉）',
description: 'HTC U Ultra（U-1w）初绽（粉） 移动联通电信六模全网通 双卡双待双屏',
quantity: '100',
price: '5088',
image: open("https://img11.360buyimg.com/mobilecms/s500x500_jfs/t3244/360/6728063286/236794/8c103f3c/58ae8d14N998fb78d.jpg!q70.jpg"))

Product.create!(title: 'Meitu 美图T8',
description: 'Meitu 美图T8（MP1602）4GB+128GB 魔力橙 自拍美颜 全网通 移动联通电信4G手机',
quantity: '150',
price: '4099',
image: open("https://img12.360buyimg.com/mobilecms/s500x500_jfs/t3145/113/6389106578/178066/72950b8c/58a43d52Nd776bb35.jpg!q70.jpg"))

Product.create!(title: 'vivo X9 全网通',
description: 'vivo X9 全网通 4GB+64GB 活力蓝 移动联通电信4G手机 双卡双待',
quantity: '120',
price: '2798',
image: open("https://img13.360buyimg.com/mobilecms/s500x500_jfs/t5431/160/1630814540/47653/2245d825/5912c06cN65c353ca.jpg!q70.jpg"))

Product.create!(title: 'Apple iPhone 7 Plus 128G 红色特别版',
description: 'Apple iPhone 7 Plus 128G 红色特别版 移动联通电信4G手机',
quantity: '50',
price: '6699',
image: open("https://img14.360buyimg.com/mobilecms/s500x500_jfs/t4276/257/2416766721/125228/ba72a107/58d1d078N20e18b62.jpg!q70.jpg"))

Product.create!(title: '小米MIX 全网通 标准版',
description: '小米MIX 全网通 标准版 4GB内存 128GB ROM 皓月白 移动联通电信4G手机',
quantity: '110',
price: '3499',
image: open("https://img11.360buyimg.com/mobilecms/s500x500_jfs/t4264/215/455518113/309855/38fe41f1/58b4fc81N1d924112.jpg!q70.jpg"))
