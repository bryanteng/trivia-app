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

data = { results: [
    # 09. General Knowledge
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "easy",
      question: "Area 51 is located in which US state?",
      correct_answer: "Nevada",
      incorrect_answers: [
        "Arizona",
        "New Mexico",
        "Utah"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "In the Morse code, which letter is indicated by 3 dots? ",
      correct_answer: "S",
      incorrect_answers: [
        "O",
        "A",
        "C"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      difficulty: "easy",
      question: "It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "Who is a co-founder of music streaming service Spotify?",
      correct_answer: "Daniel Ek",
      incorrect_answers: [
        "Sean Parker",
        "Felix Miller",
        "Michael Breidenbruecker"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "hard",
      question: "Which of these banks are NOT authorized to issue currency notes in Hong Kong?",
      correct_answer: "OCBC",
      incorrect_answers: [
        "HSBC",
        "Standard Chartered",
        "Bank of China"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      difficulty: "hard",
      question: "&quot;Number 16 Bus Shelter&quot; was a child&#039;s name that was approved by the New Zealand government.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "What is the Swedish word for &quot;window&quot;?",
      correct_answer: "F&ouml;nster",
      incorrect_answers: [
        "H&aring;l",
        "Sk&auml;rm",
        "Ruta"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "The term &quot;scientist&quot; was coined in which year?",
      correct_answer: "1833",
      incorrect_answers: [
        "1933",
        "1942",
        "1796"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "hard",
      question: "Which one of these Swedish companies was founded in 1943?",
      correct_answer: "IKEA",
      incorrect_answers: [
      "H &amp; M",
      "Lindex",
      "Clas Ohlson"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "hard",
      question: "According to Fair Works Australia, how long do you have to work to get Long Service Leave?",
      correct_answer: "7 years",
      incorrect_answers: [
        "2 years",
        "8 years",
        "6 months"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "When was the Declaration of Independence approved by the Second Continental Congress?",
      correct_answer: "July 2, 1776",
      incorrect_answers: [
        "May 4, 1776",
        "June 4, 1776",
        "July 4, 1776"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "easy",
      question: "What name represents the letter &quot;M&quot; in the NATO phonetic alphabet?",
      correct_answer: "Mike",
      incorrect_answers: [
        "Matthew",
        "Mark",
        "Max"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "What is the defining characteristic of someone who is described as hirsute?",
      correct_answer: "Hairy",
      incorrect_answers: [
        "Rude",
        "Funny",
        "Tall"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "easy",
      question: "Area 51 is located in which US state?",
      correct_answer: "Nevada",
      incorrect_answers: [
        "Arizona",
        "New Mexico",
        "Utah"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      difficulty: "easy",
      question: "Nutella is produced by the German company Ferrero.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "boolean",
      difficulty: "medium",
      question: "The word &quot;news&quot; originates from the first letters of the 4 main directions on a compass (North, East, West, South).",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "hard",
      question: "What year was Queen Elizabeth II born?",
      correct_answer: "1926",
      incorrect_answers: [
        "1923",
        "1929",
        "1930"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "The term &quot;scientist&quot; was coined in which year?",
      correct_answer: "1833",
      incorrect_answers: [
        "1933",
        "1942",
        "1796"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      difficulty: "easy",
      question: "Adolf Hitler was born in Australia. ",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple",
      difficulty: "medium",
      question: "What was the soft drink Pepsi originally introduced as?",
      correct_answer: "Brad&#039;s Drink",
      incorrect_answers: [
        "Pepsin Pop",
        "Carolina Cola",
        "Pepsin Syrup"
      ]
    },
    # 10. Entertainment: Books
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "easy",
      question: "Who wrote &quot;Harry Potter&quot;?",
      correct_answer: "J.K. Rowling",
      incorrect_answers: [
        "J.R.R. Tolkien",
        "Terry Pratchett",
        "Daniel Radcliffe"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "By what name was the author Eric Blair better known?",
      correct_answer: "George Orwell",
      incorrect_answers: [
        "Aldous Huxley",
        "Ernest Hemingway",
        "Ray Bradbury"
      ]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      difficulty: "easy",
      question: "The &quot;Berenstein Bears&quot; is the correct spelling of the educational children&#039;s book series&#039; name.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      difficulty: "easy",
      question: "The book 1984 was published in 1949.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "easy",
      question: "Under what pseudonym did Stephen King publish five novels between 1977 and 1984?",
      correct_answer: "Richard Bachman",
      incorrect_answers: [
        "J. D. Robb",
        "Mark Twain",
        "Lewis Carroll"
      ]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      difficulty: "easy",
      question: "Stephen Chbosky wrote the book &#039;The Perks of Being A Wallflower&#039;.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "J.K. Rowling completed &quot;Harry Potter and the Deathly Hallows&quot; in which hotel in Edinburgh, Scotland?",
      correct_answer: "The Balmoral",
      incorrect_answers: [
        "The Dunstane Hotel",
        "Hotel Novotel",
        "Sheraton Grand Hotel &amp; Spa"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "In the novel &quot;Lord of the Rings&quot;, how many rings of power were given to the race of man?",
      correct_answer: "9",
      incorrect_answers: [
        "5",
        "11",
        "13"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "What is the make and model of the tour vehicles in &quot;Jurassic Park&quot;?",
      correct_answer: "1992 Toyota Land Cruiser",
      incorrect_answers: [
        "1992 Jeep Wrangler YJ Sahar",
        "1992 Ford Explorer XLT",
        "Mercedes M-Class"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "In Alice in Wonderland, what is the name of Alice&#039;s kitten?",
      correct_answer: "Dinah",
      incorrect_answers: [
        "Oscar",
        "Heath",
        "Smokey"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "easy",
      question: "Who wrote &quot;Harry Potter&quot;?",
      correct_answer: "J.K. Rowling",
      incorrect_answers: [
        "J.R.R. Tolkien",
        "Terry Pratchett",
        "Daniel Radcliffe"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "Who wrote the &quot;A Song of Ice And Fire&quot; fantasy novel series?",
      correct_answer: "George R. R. Martin",
      incorrect_answers: [
        "George Lucas",
        "George Orwell",
        "George Eliot"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "What is the fourth book of the Old Testament?",
      correct_answer: "Numbers",
      incorrect_answers: [
        "Genesis",
        "Exodus",
        "Leviticus"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "The novel &quot;Of Mice And Men&quot; was written by what author? ",
      correct_answer: "John Steinbeck ",
      incorrect_answers: [
        "George Orwell",
        "Mark Twain ",
        "Harper Lee"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "In the year 1818, novelist Mary Shelly is credited with writing a fiction novel and creating this infamous character.",
      correct_answer: "Frankenstein&#039;s monster",
      incorrect_answers: [
        "Dracula",
        "The Thing",
        "The Invisible Man"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "What is the name of the gang that Ponyboy is a part of in the book, The Outsiders?",
      correct_answer: "The Greasers",
      incorrect_answers: [
        "The Outsiders",
        "The Mafia",
        "The Socs"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "The book &quot;Fahrenheit 451&quot; was written by whom?",
      correct_answer: "Ray Bradbury",
      incorrect_answers: [
        "R. L. Stine",
        "Wolfgang Amadeus Mozart",
        "Stephen King"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "hard",
      question: "In Margaret Atwood&#039;s &quot;The Handmaid&#039;s Tale&quot;, what is Offred&#039;s real name is implied to be?",
      correct_answer: "June",
      incorrect_answers: [
        "August",
        "April",
        "May"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "hard",
      question: "In the Magic: The Gathering universe, the Antiquities, Ice Age, and Alliances expansions take place on which continent?",
      correct_answer: "Terisiare",
      incorrect_answers: [
        "Aerona",
        "Shiv",
        "Jamuraa"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      difficulty: "medium",
      question: "In Alice in Wonderland, what is the name of Alice&#039;s kitten?",
      correct_answer: "Dinah",
      incorrect_answers: [
        "Oscar",
        "Heath",
        "Smokey"
      ]
    },
    # 11. Entertainment: Film
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "In the 1984 movie &quot;The Terminator&quot;, what model number is the Terminator portrayed by Arnold Schwarzenegger?",
      correct_answer: "T-800",
      incorrect_answers: [
        "I-950",
        "T-888",
        "T-1000"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      difficulty: "easy",
      question: "The movie &quot;The Nightmare before Christmas&quot; was all done with physical objects.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "Which movie contains the quote, &quot;Say hello to my little friend!&quot;?",
      correct_answer: "Scarface",
      incorrect_answers: [
        "Reservoir Dogs",
        "Heat",
        "Goodfellas"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;",
      correct_answer: "Dirty Dancing",
      incorrect_answers: [
        "Three Men and a Baby",
        "Ferris Bueller&#039;s Day Off",
        "Pretty in Pink"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "What is the orange and white bot&#039;s name in &quot;Star Wars: The Force Awakens&quot;?",
      correct_answer: "BB-8",
      incorrect_answers: [
        "BB-3",
        "AA-A",
        "R2-D2"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "What does TIE stand for in reference to the TIE Fighter in &quot;Star Wars&quot;?",
      correct_answer: "Twin Ion Engine",
      incorrect_answers: [
        "Twin Iron Engine",
        "Twin Intercepter Engine",
        "Twin Inception Engine"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "hard",
      question: "In the 1964 film &quot;Zulu&quot;, what song does the British Army company sing before the final battle?",
      correct_answer: "Men of Harlech",
      incorrect_answers: [
        "Scotland the Brave",
        "Colonel Bogey March",
        "The British Grenadiers"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "Which animated film did Steven Lisberger direct in 1980 before going on to direct Tron?",
      correct_answer: "Animalympics",
      incorrect_answers: [
        "The Fox and the Hound",
        "The Black Cauldron",
        "The Great Mouse Detecive"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      difficulty: "easy",
      question: "George Lucas directed the entire original Star Wars trilogy.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "What character in the Winnie the Pooh films was added by Disney and does not appear in the original books?",
      correct_answer: "Gopher",
      incorrect_answers: [
        "Tigger",
        "Heffalumps",
        "Rabbit"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "Who played Deputy Marshal Samuel Gerard in the 1993 film &quot;The Fugitive&quot;?",
      correct_answer: "Tommy Lee Jones",
      incorrect_answers: [
        "Harrison Ford",
        "Harvey Keitel",
        "Martin Landau"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      difficulty: "easy",
      question: "Shaquille O&#039;Neal appeared in the 1997 film &quot;Space Jam&quot;.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "The 1939 movie &quot;The Wizard of Oz&quot; contained a horse that changed color, what material did they use to achieve this effect?",
      correct_answer: "Gelatin",
      incorrect_answers: [
        "Dye",
        "Paint",
        "CGI Effect"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "Which one of these films are shot entirely in one-take?",
      correct_answer: "Russian Ark",
      incorrect_answers: [
        "Good Will Hunting",
        "Birdman",
        "Schindler&#039;s List"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "Which movie of film director Stanley Kubrick is known to be an adaptation of a Stephen King novel?",
      correct_answer: "The Shining",
      incorrect_answers: [
        "2001: A Space Odyssey",
        " Dr. Strangelove ",
        "Eyes Wide Shut"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "What type of cheese, loved by Wallace and Gromit, had it&#039;s sale prices rise after their successful short films?",
      correct_answer: "Wensleydale",
      incorrect_answers: [
        "Cheddar",
        "Moon Cheese",
        "Edam"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?",
      correct_answer: "Kaltag, Nikki, and Star",
      incorrect_answers: [
        "Dusty, Kirby, and Ralph",
        "Nuk, Yak, and Sumac",
        "Jenna, Sylvie, and Dixie"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "hard",
      question: "In order to cut costs, what were most of the extras of Mad Max (1979) paid with?",
      correct_answer: "Beer",
      incorrect_answers: [
        "Fast food",
        "Food stamps",
        "They weren&#039;t paid"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "Which former Star Trek actor directed Three Men and a Baby (1987)?",
      correct_answer: "Leonard Nimoy",
      incorrect_answers: [
        "William Shatner",
        "George Takei",
        "James Doohan"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      difficulty: "medium",
      question: "Which town is the setting for the Disney movie The Love Bug (1968)?",
      correct_answer: "San Francisco",
      incorrect_answers: [
        "Los Angeles",
        "Sacramento",
        "San Jose"
      ]
    },
    # 12. Entertainment: Music
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "easy",
      question: "Which English guitarist has the nickname &quot;Slowhand&quot;?",
      correct_answer: "Eric Clapton",
      incorrect_answers: [
        "Mark Knopfler",
        "Jeff Beck",
        "Jimmy Page"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "easy",
      question: "Who is the frontman of the band 30 Seconds to Mars?",
      correct_answer: "Jared Leto",
      incorrect_answers: [
        "Gerard Way",
        "Matthew Bellamy",
        "Mike Shinoda"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "medium",
      question: "Which band released songs such as &quot;Electric Feel&quot;, &quot;Kids&quot;, and &quot;Time to Pretend&quot;?",
      correct_answer: "MGMT",
      incorrect_answers: [
        "Passion Pit",
        "Phoenix",
        "Franz Ferdinand"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "easy",
      question: "What was the name of singer Frank Ocean&#039;s second studio album, which was released on August 20, 2016?",
      correct_answer: "Blonde",
      incorrect_answers: [
        "Brunette",
        "Black",
        "Burgundy"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "medium",
      question: "Which of these is NOT the name of an album released by American rapper Viper?",
      correct_answer: "The Life of Pablo",
      incorrect_answers: [
        "Kill Urself My Man",
        "You&#039;ll Cowards Don&#039;t Even Smoke Crack",
        "Yo Wife Handcuffin&#039; Me"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "easy",
      question: "Which artist released the 2012 single &quot;Harlem Shake&quot;, which was used in numerous YouTube videos in 2013?",
      correct_answer: "Baauer",
      incorrect_answers: [
        "RL Grime",
        "NGHTMRE",
        "Flosstradamus"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "hard",
      question: "Which band is the longest active band in the world with no breaks or line-up changes?",
      correct_answer: "U2",
      incorrect_answers: [
        "Radiohead",
        "Rush",
        "Rolling Stones"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "medium",
      question: "What animal is featured on the cover of English electronic music group The Prodigy&#039;s album, &quot;The Fat of the Land&quot;?",
      correct_answer: "Crab",
      incorrect_answers: [
        "Fox",
        "Elephant",
        "Tiger"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      difficulty: "easy",
      question: "Which Beatles album does NOT feature any of the band members on it&#039;s cover?",
      correct_answer: "The Beatles (White Album)",
      incorrect_answers: [
        "Rubber Soul",
        "Abbey Road",
        "Magical Mystery Tour"
      ]
    }
  ]
}

data[:"results"].each do | result |
  category = Category.find_or_create_by(name: result[:category])
  
  trivia = Trivium.find_or_create_by(difficulty: result[:difficulty],
                        question: result[:question], category_id: category.id)

  Answer.find_or_create_by(answer: result[:correct_answer], is_correct: true,
                          trivium_id: trivia.id)

  result[:incorrect_answers].each do | answer |
    Answer.find_or_create_by(answer: answer, is_correct: false,
                            trivium_id: trivia.id)
  end
end

puts "#{User.count} users created!"
puts "#{Category.count} categories created!"
puts "#{Trivium.count} trivia created!"
puts "#{Answer.count} answers created!"
