https://bmi-for-world-practice.herokuapp.com/
## User Stories


- 身為使用者，我在首頁上可以選擇註冊或登入。
	- 身為使用者，在註冊時，需要輸入name 和 email。
	- 身為使用者，登入後，可以在navbar選擇編輯或登出的動作。
	

- 身為使用者，我可以新增、編輯或刪除學校資料。
	- 身為使用者，新增學校資料後，只能新增一筆班級資料和編輯。
	- 身為使用者，新增班級資料後，可以接著新增、編輯或刪除學生的資料。
		- 身為使用者，新增學生資料裡的身高體重，可以計算出該學生的BMI值。

- 身為使用者，我可以在首頁上，搜尋學校名稱。
	-	身為使用者，我可以在首頁上做進階搜尋，條件有城市、區域、BMI值的範圍。
	- 身為使用者，我可以直接在首頁上選擇城市，並出現區域及學校。

- 身為使用者，在此網站做任何新增編輯的動作，皆會顯示該使用者的帳號。

### 驗證


## Model

- User (name ,email)
	has_one :grades
	

- School (name, city_id, distance_id)
	- belongs_to :distance
	- belongs_to :city
	- has_many :grades


- Grade (name, User_id school_id)
	- belongs_to :teacher
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

## Controller

- GradesController

- SchoolsController

- StudentsController
