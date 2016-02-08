namespace :dev do
	desc "build country"
	task :countrybuild => :environment do
		city_list = %w[臺北市 新北市 桃園市 臺中市 臺南市 高雄市 新竹縣 南投縣 雲林縣 嘉義縣 屏東縣 宜蘭縣 花蓮縣 臺東縣 澎湖縣 苗栗縣 彰化縣 基隆市 新竹市 嘉義市 連江縣 金門縣]
		taipei = %w[中正區 大同區 中山區 松山區 大安區 萬華區 信義區 士林區 北投區 內湖區 南港區 文山區]
		newtaipei = %w[板橋區 新莊區 中和區 永和區 土城區 樹林區 三峽區 鶯歌區 三重區 蘆洲區 五股區 泰山區 林口區 淡水區 金山區 八里區 萬里區 石門區 三芝區 瑞芳區 汐止區 平溪區 貢寮區 雙溪區 深坑區 石碇區 新店區 坪林區 烏來區]
		taouyun = %w[桃園區 中壢區 平鎮區 八德區 楊梅區 蘆竹區 大溪區 龍潭區 龜山區 大園區 觀音區 新屋區 復興區]
		taichung = %w[中區 東區 南區 西區 北區 北屯區 西屯區 南屯區 太平區 大里區 霧峰區 烏日區 豐原區 后里區 石岡區 東勢區 和平區 新社區 潭子區 神岡區 大雅區 大肚區 沙鹿區 龍井區 梧棲區 清水區 大甲區 外埔區 大安區]
		tainan = %w[中西區 東區  南區 北區 安平區 安南區 永康區 歸仁區 新化區  左鎮區 玉井區 楠西區 南化區 仁德區 關廟區 龍崎區 官田區 麻豆區  佳里區 西港區 七股區 將軍區 學甲區 北門區 新營區 後壁區 白河區  東山區 六甲區 下營區 柳營區 鹽水區 善化區 大內區 山上區 新市區 安定區]
		kaohsung = %w[楠梓區 左營區 鼓山區 三民區 鹽埕區 前金區 新興區 苓雅區 前鎮區 旗津區 小港區 鳳山區 大寮區 鳥松區 林園區 仁武區 大樹區 大社區 岡山區 路竹區 橋頭區 梓官區 彌陀區 永安區 燕巢區 田寮區 阿蓮區 茄萣區 湖內區 旗山區 美濃區 內門區 杉林區 甲仙區 六龜區 茂林區 桃源區 那瑪夏區]
		kilung = %w[仁愛區 中正區 信義區 中山區 安樂區 暖暖區 七堵區]
		hsinchus = %w[東區 北區 香山區]
		chiayis = %w[東區 西區]
		hsinchusan = %w[竹北市 竹東鎮 新埔鎮 關西鎮 湖口鄉 新豐鄉 峨眉鄉 寶山鄉 北埔鄉 芎林鄉 橫山鄉 尖石鄉 五峰鄉]
		miaoli = %w[苗栗市 頭份市 卓蘭鎮 竹南鎮 後龍鎮 通霄鎮 苑裡鎮 造橋鄉 西湖鄉 頭屋鄉 公館鄉 銅鑼鄉 三義鄉 大湖鄉 獅潭鄉 三灣鄉 南庄鄉 泰安鄉]
		changhua =%w[彰化市 員林市 和美鎮 鹿港鎮 溪湖鎮 二林鎮 田中鎮 北斗鎮 花壇鄉 芬園鄉 大村鄉 永靖鄉 伸港鄉 線西鄉 福興鄉 秀水鄉 埔心鄉 埔鹽鄉 大城鄉 芳苑鄉 竹塘鄉 社頭鄉 二水鄉 田尾鄉 埤頭鄉 溪州鄉]
		nantou	=	%w[南投市 埔里鎮 草屯鎮 竹山鎮 集集鎮 名間鄉 鹿谷鄉 中寮鄉 魚池鄉 國姓鄉 水里鄉 信義鄉 仁愛鄉]
		yunlin	=	%w[斗六市 斗南鎮 虎尾鎮 西螺鎮 土庫鎮 北港鎮 林內鄉 古坑鄉 大埤鄉 莿桐鄉 褒忠鄉 二崙鄉 崙背鄉 麥寮鄉 臺西鄉 東勢鄉 元長鄉 四湖鄉 口湖鄉 水林鄉]
		chiayian	=	%w[太保市 朴子市 布袋鎮 大林鎮 民雄鄉 溪口鄉 新港鄉 六腳鄉 東石鄉 義竹鄉 鹿草鄉 水上鄉 中埔鄉 竹崎鄉 梅山鄉 番路鄉 大埔鄉 阿里山鄉]
		pingtung	=	%w[屏東市 潮州鎮 東港鎮 恆春鎮 萬丹鄉 長治鄉 麟洛鄉 九如鄉 里港鄉 鹽埔鄉 高樹鄉 萬巒鄉 內埔鄉 竹田鄉 新埤鄉 枋寮鄉 新園鄉 崁頂鄉 林邊鄉 南州鄉 佳冬鄉 琉球鄉 車城鄉 滿州鄉 枋山鄉 霧台鄉 瑪家鄉 泰武鄉 來義鄉 春日鄉 獅子鄉 牡丹鄉 三地門鄉]
		ilan	=  %w[宜蘭市 頭城鎮 羅東鎮 蘇澳鎮 礁溪鄉 壯圍鄉 員山鄉 冬山鄉 五結鄉 三星鄉 大同鄉 南澳鄉]
		hualien	=	%w[花蓮市 鳳林鎮 玉里鎮 新城鄉 吉安鄉 壽豐鄉 光復鄉 豐濱鄉 瑞穗鄉 富里鄉 秀林鄉 萬榮鄉 卓溪鄉]
		taitung	=	%w[臺東市 成功鎮 關山鎮 長濱鄉 池上鄉 東河鄉 鹿野鄉 卑南鄉 大武鄉 綠島鄉 太麻里鄉 海端鄉 延平鄉 金峰鄉 達仁鄉 蘭嶼鄉]
		penghu	=	%w[馬公市 湖西鄉 白沙鄉 西嶼鄉 望安鄉 七美鄉]
		kinmen	=	%w[金城鎮 金湖鎮 金沙鎮 金寧鄉 烈嶼鄉 烏坵鄉]
		lianjiang	=	%w[南竿鄉 北竿鄉 莒光鄉 東引鄉]
		@city = City.all
		@city.ids.each do |j|
			@city_id = j
		case @city_id
			when 1
				for i in 0...taipei.size do
					@country = Distance.new
					@country.name = taipei[i]
					@country.city_id = 1
					@country.save
				end
			

			when 2
				for i in 0...newtaipei.size do
					@country = Distance.new
					@country.name = newtaipei[i]
					@country.city_id = 2
					@country.save
				end
			

			when 3
				for i in 0...taouyun.size do
					@country = Distance.new
					@country.name = taouyun[i]
					@country.city_id = 3
					@country.save
				end

		  when 4
				for i in 0...taichung.size do
					@country = Distance.new
					@country.name = taichung[i]
					@country.city_id = 4
					@country.save
				end

			when 5
				for i in 0...tainan.size do
					@country = Distance.new
					@country.name = tainan[i]
					@country.city_id = 5
					@country.save
				end

				when 6
				for i in 0...kaohsung.size do
					@country = Distance.new
					@country.name = kaohsung[i]
					@country.city_id = 6
					@country.save
				end

				when 7
				for i in 0...hsinchusan.size do
					@country = Distance.new
					@country.name = hsinchusan[i]
					@country.city_id = 7
					@country.save
				end

				when 8
				for i in 0...nantou.size do
					@country = Distance.new
					@country.name = nantou[i]
					@country.city_id = 8
					@country.save
				end

				when 9
				for i in 0...yunlin.size do
					@country = Distance.new
					@country.name = yunlin[i]
					@country.city_id = 9
					@country.save
				end

				when 10
				for i in 0...chiayian.size do
					@country = Distance.new
					@country.name = chiayian[i]
					@country.city_id = 10
					@country.save
				end

				when 11
				for i in 0...pingtung.size do
					@country = Distance.new
					@country.name = pingtung[i]
					@country.city_id = 11
					@country.save
				end

				when 12
				for i in 0...ilan.size do
					@country = Distance.new
					@country.name = ilan[i]
					@country.city_id = 12
					@country.save
				end

				when 13
				for i in 0...hualien.size do
					@country = Distance.new
					@country.name = hualien[i]
					@country.city_id = 13
					@country.save
				end

				when 14
				for i in 0...taitung.size do
					@country = Distance.new
					@country.name = taitung[i]
					@country.city_id = 14
					@country.save
				end

				when 15
				for i in 0...penghu.size do
					@country = Distance.new
					@country.name = penghu[i]
					@country.city_id = 15
					@country.save
				end

				when 16
				for i in 0...miaoli.size do
					@country = Distance.new
					@country.name = miaoli[i]
					@country.city_id = 16
					@country.save
				end

				when 17
				for i in 0...changhua.size do
					@country = Distance.new
					@country.name = changhua[i]
					@country.city_id = 17
					@country.save
				end

				when 18
				for i in 0...kilung.size do
					@country = Distance.new
					@country.name = kilung[i]
					@country.city_id = 18
					@country.save
				end

				when 19
				for i in 0...hsinchus.size do
					@country = Distance.new
					@country.name = hsinchus[i]
					@country.city_id = 19
					@country.save
				end

				when 20
				for i in 0...chiayis.size do
					@country = Distance.new
					@country.name = chiayis[i]
					@country.city_id = 20
					@country.save
				end

				when 21
				for i in 0...lianjiang.size do
					@country = Distance.new
					@country.name = lianjiang[i]
					@country.city_id = 21
					@country.save
				end

				when 22
				for i in 0...kinmen.size do
					@country = Distance.new
					@country.name = kinmen[i]
					@country.city_id = 22
					@country.save
				end
			end
		end
	end
end 




# newtaipei = %w[板橋區 新莊區 中和區 永和區 土城區 樹林區 三峽區 鶯歌區 三重區 蘆洲區 五股區 泰山區 林口區 淡水區 金山區 八里區 萬里區 石門區 三芝區 瑞芳區 汐止區 平溪區 貢寮區 雙溪區 深坑區 石碇區 新店區 坪林區 烏來區]
# taouyun = %w[桃園區 中壢區 平鎮區 八德區 楊梅區 蘆竹區 大溪區 龍潭區 龜山區 大園區 觀音區 新屋區 復興區]
# taichung = %w[中區 東區 南區 西區 北區 北屯區 西屯區 南屯區 太平區 大里區 霧峰區 烏日區 豐原區 后里區 石岡區 東勢區 和平區 新社區 潭子區 神岡區 大雅區 大肚區 沙鹿區 龍井區 梧棲區 清水區 大甲區 外埔區 大安區]
# tainan = %w[中西區 東區  南區 北區 安平區 安南區 永康區 歸仁區 新化區  左鎮區 玉井區 楠西區 南化區 仁德區 關廟區 龍崎區 官田區 麻豆區  佳里區 西港區 七股區 將軍區 學甲區 北門區 新營區 後壁區 白河區  東山區 六甲區 下營區 柳營區 鹽水區 善化區 大內區 山上區 新市區 安定區]
# kaohsung = %w[楠梓區 左營區 鼓山區 三民區 鹽埕區 前金區 新興區 苓雅區 前鎮區 旗津區 小港區 鳳山區 大寮區 鳥松區 林園區 仁武區 大樹區 大社區 岡山區 路竹區 橋頭區 梓官區 彌陀區 永安區 燕巢區 田寮區 阿蓮區 茄萣區 湖內區 旗山區 美濃區 內門區 杉林區 甲仙區 六龜區 茂林區 桃源區 那瑪夏區]
# kilung = %w[仁愛區 中正區 信義區 中山區 安樂區 暖暖區 七堵區]
# hsinchus = %w[東區 北區 香山區]
# chiayis = %w[東區 西區]
# hsinchusan = %[竹北市 竹東鎮 新埔鎮 關西鎮 湖口鄉 新豐鄉 峨眉鄉 寶山鄉 北埔鄉 芎林鄉 橫山鄉 尖石鄉 五峰鄉]
# miaoli = %w[苗栗市 頭份市 卓蘭鎮 竹南鎮 後龍鎮 通霄鎮 苑裡鎮 造橋鄉 西湖鄉 頭屋鄉 公館鄉 銅鑼鄉 三義鄉 大湖鄉 獅潭鄉 三灣鄉 南庄鄉 泰安鄉]

# changhua =%w[彰化市 員林市 和美鎮 鹿港鎮 溪湖鎮 二林鎮 田中鎮 北斗鎮 花壇鄉 芬園鄉 大村鄉 永靖鄉 伸港鄉 線西鄉 福興鄉 秀水鄉 埔心鄉 埔鹽鄉 大城鄉 芳苑鄉 竹塘鄉 社頭鄉 二水鄉 田尾鄉 埤頭鄉 溪州鄉]
# nantou	=	%w[南投市 埔里鎮 草屯鎮 竹山鎮 集集鎮 名間鄉 鹿谷鄉 中寮鄉 魚池鄉 國姓鄉 水里鄉 信義鄉 仁愛鄉]
# yunlin	=	%w[斗六市 斗南鎮 虎尾鎮 西螺鎮 土庫鎮 北港鎮 林內鄉 古坑鄉 大埤鄉 莿桐鄉 褒忠鄉 二崙鄉 崙背鄉 麥寮鄉 臺西鄉 東勢鄉 元長鄉 四湖鄉 口湖鄉 水林鄉]
# chiayian	=	%w[太保市 朴子市 布袋鎮 大林鎮 民雄鄉 溪口鄉 新港鄉 六腳鄉 東石鄉 義竹鄉 鹿草鄉 水上鄉 中埔鄉 竹崎鄉 梅山鄉 番路鄉 大埔鄉 阿里山鄉]
# pingtung	=	%w[屏東市 潮州鎮 東港鎮 恆春鎮 萬丹鄉 長治鄉 麟洛鄉 九如鄉 里港鄉 鹽埔鄉 高樹鄉 萬巒鄉 內埔鄉 竹田鄉 新埤鄉 枋寮鄉 新園鄉 崁頂鄉 林邊鄉 南州鄉 佳冬鄉 琉球鄉 車城鄉 滿州鄉 枋山鄉 霧台鄉 瑪家鄉 泰武鄉 來義鄉 春日鄉 獅子鄉 牡丹鄉 三地門鄉]
# ilan	=  %w[宜蘭市 頭城鎮 羅東鎮 蘇澳鎮 礁溪鄉 壯圍鄉 員山鄉 冬山鄉 五結鄉 三星鄉 大同鄉 南澳鄉]
# hualien	=	%w[花蓮市 鳳林鎮 玉里鎮 新城鄉 吉安鄉 壽豐鄉 光復鄉 豐濱鄉 瑞穗鄉 富里鄉 秀林鄉 萬榮鄉 卓溪鄉]
# taitung	=	%w[臺東市 成功鎮 關山鎮 長濱鄉 池上鄉 東河鄉 鹿野鄉 卑南鄉 大武鄉 綠島鄉 太麻里鄉 海端鄉 延平鄉 金峰鄉 達仁鄉 蘭嶼鄉]
# penghu	=	%w[馬公市 湖西鄉 白沙鄉 西嶼鄉 望安鄉 七美鄉]
# kinmen	=	%w[金城鎮 金湖鎮 金沙鎮 金寧鄉 烈嶼鄉 烏坵鄉]
# lianjiang	=	%w[南竿鄉 北竿鄉 莒光鄉 東引鄉]