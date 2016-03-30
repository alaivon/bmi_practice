https://bmi-for-world-practice.herokuapp.com/

這是第一個突發奇想的小作品，可以讓老師記錄學生的BMI值，掌控學生的健康為主要用意，
任何的使用者也可以利用此功能來記錄自己的身高體重和BMI值。



## User Stories


- 身為使用者，我在首頁上可以選擇註冊或登入。
	- 身為使用者，在註冊時，需要輸入name 和 email。
	- 身為使用者，登入後，可以編輯個人資料或登出。
	

- 身為使用者，我可以新增、編輯或刪除學校資料。
	- 身為使用者，新增學校資料後，可以接著新增班級資料。
	- 身為使用者，新增班級資料後，可以接著新增學生的資料。
		- 身為使用者，新增學生資料的身高體重後，可以計算出該學生的BMI值。

- 身為使用者，我可以在首頁上，搜尋學校名稱。
	- 身為使用者，我可以直接在首頁上選擇城市，並出現區域及學校。

- 身為輸入學生和班級資料的使用者，才有編輯和刪除權限。

## Model

- User (name ,email)
	has_many :grades
	

- School (name, city_id, distance_id)
	- belongs_to :distance
	- belongs_to :city
	- has_many :grades


- Grade (name, User_id school_id)
	- belongs_to :user
	-	belongs_to :school
	- has_many :students

- Student (number, name, birth, height, weight, bmi, grade_id ,gender)
	belongs_to :grade

- City (city)
	- has_many :schools
	- has_many :distances

- Distance (name, city_id)
	- belongs_to :city
	- has_many :schools


```ruby 

  def name_capitalize(name) 輸出時，字首會轉成大寫
    name_to_a = name.split(" ")
    capital = name_to_a.collect {|i| i.capitalize }
    tos = capital.join(" ")
    tos
  end

  def serial_no(school, i=0)  #創建學校資料時，給予特別的序列號， ex: 20160208001
    school.created_on.strftime("%Y%m%d") +  sprintf('%03d',i+1).to_s
  end

  def bmi_value #將身高體重做計算，輸出BMI值到其欄位
		self.update(bmi: (weight / (height/100)**2).round(2))
	end

```
