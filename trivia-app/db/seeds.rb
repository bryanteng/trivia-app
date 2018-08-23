# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all
Trivium.destroy_all
Answer.destroy_all

trebek = User.create(username: "Trebekian", password: "123")

data = { trivia_categories: [
    {id: 9,
      name: "General Knowledge"
    },
    {id: 10,
      name: "Entertainment: Books"
    },
    {id: 11,
      name: "Entertainment: Film"
    },
    {id: 12,
      name: "Entertainment: Music"
    },
    {id: 13,
      name: "Entertainment: Musicals & Theatres"
    },
    {id: 14,
      name: "Entertainment: Television"
    },
    {id: 15,
      name: "Entertainment:ideo Games"
    },
    {id: 16,
      name: "Entertainment: Board Games"
    },
    {id: 17,
      name: "Science & Nature"
    },
    {id: 18,
      name: "Science: Computers"
    },
    {id: 19,
      name: "Science: Mathematics"
    },
    {id: 20,
      name: "Mythology"
    },
    {id: 21,
      name: "Sports"
    },
    {id: 22,
      name: "Geography"
    },
    {id: 23,
      name: "History"
    },
    {id: 24,
      name: "Politics"
    },
    {id: 25,
      name: "Art"
    },
    {id: 26,
      name: "Celebrities"
    },
    {id: 27,
      name: "Animals"
    },
    {id: 28,
      name: "Vehicles"
    },
    {id: 29,
      name: "Entertainment: Comics"
    },
    {id: 30,
      name: "Science: Gadgets"
    },
    {id: 31,
      name: "Entertainment: Japanese Anime & Manga"
    },
    {id: 32,
      name: "Entertainment: Cartoon & Animations"
    }
  ]
}

data[:trivia_categories].each do | cat |
  Category.create(name: cat[:name])
end
puts "#{Category.count} categories created!"
