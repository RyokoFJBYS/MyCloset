# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(name_en: 'bottoms', name_ja: 'ボトムス')
Type.create(name_en: 'tops', name_ja: 'トップス')
Type.create(name_en: 'all in one', name_ja: 'オールインワン')
Type.create(name_en: 'outer', name_ja: 'アウター')

Color.create(name_en: 'black', name_ja:'黒色系')
Color.create(name_en: 'white', name_ja:'白色系')
Color.create(name_en: 'red', name_ja:'赤色系')
Color.create(name_en: 'orange', name_ja:'橙色系')
Color.create(name_en: 'yellow', name_ja:'黄色系')
Color.create(name_en: 'yellow_green', name_ja:'黄緑色系')
Color.create(name_en: 'green', name_ja:'緑色系')
Color.create(name_en: 'light_blue', name_ja:'水色系')
Color.create(name_en: 'blue', name_ja:'青色系')
Color.create(name_en: 'navy', name_ja:'紺色系')
Color.create(name_en: 'purple', name_ja:'紫色系')
Color.create(name_en: 'pink', name_ja:'桃色系')
Color.create(name_en: 'brown', name_ja:'茶色系')
Color.create(name_en: 'gray', name_ja:'グレー系')
Color.create(name_en: 'beige', name_ja:'ベージュ系')
Color.create(name_en: 'colorful', name_ja:'カラフル')
Color.create(name_en: 'other_color', name_ja:'その他')



Pattern.create(name_en: 'plain', name_ja:'無地')
Pattern.create(name_en: 'plaid', name_ja: 'チェック')
Pattern.create(name_en: 'flower', name_ja: '花柄')
Pattern.create(name_en: 'dot', name_ja: 'ドット')
Pattern.create(name_en: 'stripe', name_ja: 'ストライプ')
Pattern.create(name_en: 'border', name_ja: 'ボーダー')
Pattern.create(name_en: 'camouflage', name_ja: 'カモフラージュ')
Pattern.create(name_en: 'animal', name_ja: 'アニマル柄')
Pattern.create(name_en: 'illustration', name_ja: 'イラスト')
Pattern.create(name_en: 'paisley', name_ja: 'ペイズリー')
Pattern.create(name_en: 'botanical', name_ja: 'ボタニカル')
Pattern.create(name_en: 'herringbone', name_ja: 'ヘリンボーン')
Pattern.create(name_en: 'native', name_ja: 'ネイティブ')
Pattern.create(name_en: 'houndstooth', name_ja: '千鳥格子')
Pattern.create(name_en: 'geometry', name_ja: '幾何学模様')
Pattern.create(name_en: 'other_pattern', name_ja: 'その他')

Season.create(name_en: 'spring', name_ja: '春')
Season.create(name_en: 'summer', name_ja: '夏')
Season.create(name_en: 'autumn', name_ja: '秋')
Season.create(name_en: 'winter', name_ja: '冬')
Season.create(name_en: 'all_season', name_ja: 'All')