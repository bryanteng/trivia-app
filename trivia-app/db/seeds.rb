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

data = {
"response_code": 0,
"results": [
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What is the most common surname Wales?",
"correct_answer": "Jones",
"incorrect_answers": [
"Williams",
"Davies",
"Evans"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "Area 51 is located in which US state?",
"correct_answer": "Nevada",
"incorrect_answers": [
"Arizona",
"New Mexico",
"Utah"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What is &quot;dabbing&quot;?",
"correct_answer": "A dance",
"incorrect_answers": [
"A medical procedure",
"A sport",
"A language"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What type of animal was Harambe, who was shot after a child fell into it&#039;s enclosure at the Cincinnati Zoo?",
"correct_answer": "Gorilla",
"incorrect_answers": [
"Tiger",
"Panda",
"Crocodile"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "How many colors are there in a rainbow?",
"correct_answer": "7",
"incorrect_answers": [
"8",
"9",
"10"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What is on display in the Madame Tussaud&#039;s museum in London?",
"correct_answer": "Wax sculptures",
"incorrect_answers": [
"Designer clothing",
"Unreleased film reels",
"Vintage cars"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What was the nickname given to the Hughes H-4 Hercules, a heavy transport flying boat which achieved flight in 1947?",
"correct_answer": "Spruce Goose",
"incorrect_answers": [
"Noah's Ark",
"Fat Man",
"Trojan Horse"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What is the Spanish word for &quot;donkey&quot;?",
"correct_answer": "Burro",
"incorrect_answers": [
"Caballo",
"Toro",
"Perro"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "What is the name of Poland in Polish?",
"correct_answer": "Polska",
"incorrect_answers": [
"Pupcia",
"Polszka",
"Póland"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"difficulty": "easy",
"question": "The New York Times slogan is, 'All the News That's Fit to - '",
"correct_answer": "Print",
"incorrect_answers": [
"Digest",
"Look",
"Read"
]},{
"category": "Entertainment: Film",
"type": "multiple",
"difficulty": "medium",
"question": "In which 1973 film does Yul Brynner play a robotic cowboy who malfunctions and goes on a killing\tspree?",
"correct_answer": "Westworld",
"incorrect_answers": [
"Runaway",
"Android",
"The Terminators"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"difficulty": "medium",
"question": "What engine did the original &quot;Half-Life&quot; run on?",
"correct_answer": "GoldSrc",
"incorrect_answers": [
"Source",
"Quake",
"Unreal"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"difficulty": "easy",
"question": "What Nationality is D.Va from Overwatch?",
"correct_answer": "Korean",
"incorrect_answers": [
"Japanese",
"Chinese",
"Vietnamese "
]
},
{
"category": "Entertainment: Board Games",
"type": "multiple",
"difficulty": "medium",
"question": "What special item did the creators of Cards Against Humanity ship for their Black Friday pack?",
"correct_answer": "Bull Feces",
"incorrect_answers": [
"A Card Expansion",
"A Racist Toy",
"Cat Urine"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"difficulty": "medium",
"question": "Which company made the Japanese RPG &quot;Dragon Quest&quot;?",
"correct_answer": "Square Enix",
"incorrect_answers": [
"Capcom",
"Konami",
"Blizzard"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"difficulty": "easy",
"question": "Which one of these songs did the group &quot;Men At Work&quot; NOT make?",
"correct_answer": "Safety Dance",
"incorrect_answers": [
"Down Under",
"Who Can It Be Now?",
"It&#039;s a Mistake"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"difficulty": "medium",
"question": "Which famous 90&#039;s rap album is commonly referred to as &quot;The Bible of Hip Hop&quot;?",
"correct_answer": "Illmatic",
"incorrect_answers": [
"The Low End Theory",
"The Chronic",
"Enter The Wu-Tang (36 Chambers)"
]
},
{
"category": "Entertainment: Japanese Anime & Manga",
"type": "multiple",
"difficulty": "medium",
"question": "Which of the following manga have the most tankouban volumes?",
"correct_answer": "Golgo 13",
"incorrect_answers": [
"JoJo&#039;s Bizarre Adventure",
"Detective Conan",
"One Piece"
]
},
{
"category": "History",
"type": "multiple",
"difficulty": "medium",
"question": "What was the total length of the Titanic?",
"correct_answer": "882 ft | 268.8 m",
"incorrect_answers": [
"759 ft | 231.3 m",
"1042 ft | 317.6 m",
"825 ft | 251.5 m"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"difficulty": "hard",
"question": "Which team won the &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; Invitational Event February 2017 in the PC Category?",
"correct_answer": "Continuum",
"incorrect_answers": [
"GIFU",
"Santos Dexterity",
"eRa Eternity"
]
}
]}



data[:"results"].each do |key,value|
category = Category.find_or_create_by(name: key[:category])
trivia = Trivium.find_or_create_by(difficulty: key[:difficulty], question: key[:question], category_id: category.id  )
Answer.find_or_create_by(answer: key[:correct_answer], is_correct: true, trivium_id: trivia.id)
key[:incorrect_answers].each{|x| Answer.find_or_create_by(answer: x, is_correct: false, trivium_id: trivia.id) }
end
