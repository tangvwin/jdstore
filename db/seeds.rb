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


puts '建立16个Products'
Product.create!(title: '华为 HUAWEI P10',
description: '华为 HUAWEI P10 全网通 4GB+64GB 草木绿 移动联通电信4G手机 双卡双待',
quantity: '200',
price: '3788',
)

Product.create!(title: 'HTC U Ultra（U-1w）初绽（粉）',
description: 'HTC U Ultra（U-1w）初绽（粉） 移动联通电信六模全网通 双卡双待双屏',
quantity: '100',
price: '5088',
)

Product.create!(title: 'Meitu 美图T8',
description: 'Meitu 美图T8（MP1602）4GB+128GB 魔力橙 自拍美颜 全网通 移动联通电信4G手机',
quantity: '150',
price: '4099',

)

Product.create!(title: 'vivo X9 全网通',
description: 'vivo X9 全网通 4GB+64GB 活力蓝 移动联通电信4G手机 双卡双待',
quantity: '120',
price: '2798',

)

Product.create!(title: 'Apple iPhone 7 Plus 128G 红色特别版',
description: 'Apple iPhone 7 Plus 128G 红色特别版 移动联通电信4G手机',
quantity: '50',
price: '6699',

)

Product.create!(title: '小米MIX 全网通 标准版',
description: '小米MIX 全网通 标准版 4GB内存 128GB ROM 皓月白 移动联通电信4G手机',
quantity: '110',
price: '3499',

)

Product.create!(title: '努比亚(nubia)Z17mini',
description: '努比亚(nubia)【6+64GB】Z17mini 炫红色 移动联通电信4G手机 双卡双待努比亚(nubia)【6+64GB】Z17mini 炫红色 移动联通电信4G手机 双卡双待',
quantity: '200',
price: '1999',

)


Product.create!(title: '锤子M1L',
description: '锤子M1L（SM919）6GB+64GB 不锈钢边框 全网通 双卡双待 全网通 双卡双待 移动联通电信4G手机',
quantity: '200',
price: '2499',

)

Product.create!(title: 'HTC U Ultra蓝宝石版',
description: 'HTC U Ultra蓝宝石版（U-1w-128G）远望（蓝） 移动联通电信六模全网通 双卡双待双屏 珍稀蓝宝石，远离划痕！5.7英寸智能双屏，1600万前摄多种自拍模式1200万后摄光学防抖',
quantity: '100',
price: '5988',
)

Product.create!(title: '三星（SAMSUNG）Galaxy S8',
description: '三星（SAMSUNG）Galaxy S8（SM-G9500）4GB+64GB版 烟晶灰 移动联通电信4G手机 双卡双待 全视曲面屏！突破所限，大有可能',
quantity: '50',
price: '5688',
)


Product.create!(title: '飞利浦 10000毫安 移动电源/充电宝',
description: '飞利浦 10000毫安 移动电源/充电宝 超薄聚合物 双USB输出 数字屏显 DLP2109 黑色 薄！小巧！厚度仅12.5mm，比苹果7Plus更显小巧！金属外壳，质感十足',
quantity: '200',
price: '169',
)

Product.create!(title: 'Beats X 蓝牙无线耳机',
description: 'Beats X 蓝牙无线 入耳式耳机 运动耳机 手机耳机 带麦可通话 黑色',
quantity: '200',
price: '1188',
)


Product.create!(title: '小米 10000毫安 移动电源2',
description: '小米 10000毫安 移动电源2/充电宝 双向快充 锖色 适用于安卓/苹果/手机/平板等',
quantity: '300',
price: '79',
)

Product.create!(title: '埃普 AP-4S 懒人手机支架',
description: '埃普 AP-4S 懒人手机支架 7-10英寸桌面平板支架iPad支架 苹果华为三星铝合金通用手机架',
quantity: '200',
price: '49',
)

Product.create!(title: 'Beats Pill+',
description: 'Beats Pill+ 便携式蓝牙无线音响 黑色 ML4M2CH/A 扬声器音色饱满清晰，通透的音场可渗透房间的的每个角落',
quantity: '20',
price: '1888',
)

Product.create!(title: 'iPhone7 Plus 手机 亮黑色 全网通 128GB',
description: '苹果 iPhone7 Plus 手机 亮黑色 全网通 128GB',
quantity: '50',
price: '6415',
)
