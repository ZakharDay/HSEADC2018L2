Group.destroy_all
User.destroy_all
Student.destroy_all
puts "Everything just destroyed"

@group_covers_path = "public/autoupload/group_covers/"
@student_selfies_path = "public/autoupload/student_selfies/"

def group_cover(file_name)
  File.open(File.join(Rails.root, @group_covers_path + file_name))
end

groups = [
  {
    start_year: 2016,
    end_year: 2020,
    codename: "HSEADC2016",
    name: "Поток 2020",
    cover: group_cover("hseadc2016.jpg")
  }, {
    start_year: 2017,
    end_year: 2021,
    codename: "HSEADC2017",
    name: "Ночь нежна",
    cover: group_cover("hseadc2017.jpg")
  }, {
    start_year: 2018,
    end_year: 2022,
    codename: "HSEADC2018",
    name: "Третий отряд",
    cover: group_cover("hseadc2018.jpg")
  }, {
    start_year: 2019,
    end_year: 2023,
    codename: "HSEADC2019 G19",
    name: "HSEADC2019 G19",
    cover: group_cover("hseadc2019g19.jpg")
  }, {
    start_year: 2019,
    end_year: 2023,
    codename: "HSEADC2019 G20",
    name: "HSEADC2019 G20",
    cover: group_cover("hseadc2019g20.jpg")
  }
]

groups.each do |group|
  g = Group.create(group)
  puts "New group just created with id #{ g.id } with name #{ g.name }"
end


users = [
  {
    email: 'zakhar.day@gmail.com',
    password: 'testtest',
    first_name: 'Zakhar',
    last_name: 'Day',
    instagram: 'https://instagram.com/zakharday'
  }, {
    email: 'user2@test.com',
    password: 'testtest',
    first_name: 'Yo',
    last_name: 'Rap',
    middle_name: 'Bla',
    facebook: 'https://facebook.com/yorap',
    vkontakte: 'https://facebook.com/yorap',
    youtube: 'https://facebook.com/yorap',
    hse_portfolio: 'https://facebook.com/yorap'
  }
]

def create_user(user)
  u = User.create!(
    email:    user[:email],
    password: user[:password]
  )

  puts "User with email #{ u.email } just created"


  s = Student.find_by(user_id: u.id)

  s.first_name    = user[:first_name]
  s.last_name     = user[:last_name]
  s.middle_name   = user[:middle_name]
  s.facebook      = user[:facebook]
  s.vkontakte     = user[:vkontakte]
  s.youtube       = user[:youtube]
  s.hse_portfolio = user[:hse_portfolio]
  s.instagram     = user[:instagram]

  s.save!

  puts "Student updated"
end

users.each do |user|
  create_user(user)
end

Student.all.each do |student|
  file_list = Dir.entries(File.join(Rails.root, @student_selfies_path))
  file = File.open(File.join(Rails.root, @student_selfies_path + file_list.sample))
  student.selfies.create(image: file)
end

groups_with_members = [
  {
    codename: "HSEADC2016",
    start_date: DateTime.new(2016,9,1),
    reason: "Поступление",
    students: [
      {
        last_name: "Валеева",
        first_name: "Карина",
        middle_name: "Рустэмовна"
      }, {
        last_name: "Гордеева",
        first_name: "Алиса",
        middle_name: "Валерьевна"
      }, {
        last_name: "Ермилова",
        first_name: "Полина",
        middle_name: "Алексеевна"
      }, {
        last_name: "Залесова",
        first_name: "Анастасия",
        middle_name: "Дмитриевна"
      }, {
        last_name: "Ковыляева",
        first_name: "Анна",
        middle_name: "Максимовна"
      }, {
        last_name: "Кондратенко",
        first_name: "Мария",
        middle_name: "Александровна"
      }, {
        last_name: "Коробкова",
        first_name: "Юлия",
        middle_name: "Эдуардовна"
      }, {
        last_name: "Куприянов",
        first_name: "Александр",
        middle_name: "Сергеевич"
      }, {
        last_name: "Левакова",
        first_name: "Анастасия",
        middle_name: "Александровна"
      }, {
        last_name: "Махонина",
        first_name: "Анастасия",
        middle_name: "Георгиевна"
      }, {
        last_name: "Мд Голам Имран",
        first_name: "Владислав",
        middle_name: "Кибриевич",
      }, {
        last_name: "Московский",
        first_name: "Александр",
        middle_name: "Владимирович"
      }, {
        last_name: "Мусаева",
        first_name: "Нилуфер",
        middle_name: "Фархадовна"
      }, {
        last_name: "Самороковская",
        first_name: "Екатерина",
        middle_name: "Владимировна"
      }, {
        last_name: "Тимофеев",
        first_name: "Данила",
        middle_name: "Александрович"
      }, {
        last_name: "Филичкина",
        first_name: "Дарья",
        middle_name: "Алексеевна"
      }, {
        last_name: "Чеснокова",
        first_name: "Ксения",
        middle_name: "Сергеевна"
      }
    ]
  }, {
    codename: "HSEADC2017",
    start_date: DateTime.new(2017,9,1),
    reason: "Поступление",
    students: [
      {
        last_name: "Алмосов",
        first_name: "Антон",
        middle_name: "Ильич"
      }, {
        last_name: "Антонова",
        first_name: "Нина",
        middle_name: "Владиславовна"
      }, {
        last_name: "Белоусова",
        first_name: "Анна",
        middle_name: "-"
      }, {
        last_name: "Воронина",
        first_name: "Александра",
        middle_name: "Алексеевна"
      }, {
        last_name: "Дорошева",
        first_name: "Екатерина",
        middle_name: "Ильинична"
      }, {
        last_name: "Зяббарова",
        first_name: "Лолита",
        middle_name: "Георгиевна"
      }, {
        last_name: "Казьмина",
        first_name: "Анастасия",
        middle_name: "Денисовна"
      }, {
        last_name: "Коломиец",
        first_name: "Екатерина",
        middle_name: "Олеговна"
      }, {
        last_name: "Котенкова",
        first_name: "Анна",
        middle_name: "Анатольевна"
      }, {
        last_name: "Кочуева",
        first_name: "Оксана",
        middle_name: "Николаевна"
      }, {
        last_name: "Крюченко",
        first_name: "Андрей",
        middle_name: "Валерьевич"
      }, {
        last_name: "Мартынова",
        first_name: "София",
        middle_name: "Александровна"
      }, {
        last_name: "Молоствов",
        first_name: "Василий",
        middle_name: "Александрович"
      }, {
        last_name: "Никитина",
        first_name: "Екатерина",
        middle_name: "Олеговна"
      }, {
        last_name: "Прокофьева",
        first_name: "Татьяна",
        middle_name: "Михайловна"
      }, {
        last_name: "Шумилова",
        first_name: "Ольга",
        middle_name: "Антоновна"
      }
    ]
  }
]

groups_with_members.each do |group_with_members|
  group = Group.find_by_codename(group_with_members[:codename])

  group_with_members[:students].each do |student|
    # s = Student.create!(student)
    s = group.students.create!(student)
    m = s.memberships.last

    m.start_date = group_with_members[:start_date]
    m.reason = group_with_members[:reason]
    m.save!
  end
end

puts Group.all.as_json(include: :students).to_json

# Переиспользовать код, рефакторинг
# Более сложная many to many связь с foreign key

categories = ["design", "programming", "UI", "UX", "CX", "service design", "design systems", "systems design"]

100.times do |index|
  random_number = (1..categories.count).to_a.sample

  post = Post.create!(
    title: "Post with id #{ index + 1 }",
    body: "Some text",
    category_list: categories.sample(random_number)
  )

  puts "Post just created #{post.id}"
end

# puts Post.all.to_json
