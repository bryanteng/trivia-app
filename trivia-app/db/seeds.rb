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
]}]}



data[:"results"].each do |key,value|
category = Category.find_or_create_by(name: key[:category])
trivia = Trivium.find_or_create_by(difficulty: key[:difficulty], question: key[:question], category_id: category.id  )
Answer.find_or_create_by(answer: key[:correct_answer], is_correct: true, trivium_id: trivia.id)
key[:incorrect_answers].each{|x| Answer.find_or_create_by(answer: x, is_correct: false, trivium_id: trivia.id) }
end
