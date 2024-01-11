'<creating database university>'
use university

'<inserting some data>'
db.students.insertOne({
name: "Jhon Silva", 
registration: 1,
email: "jhon.silva@outlook.com", 
course: "Analysys and System Development",
cep: 29105265,
subjects: [{
    name: "Operational System",
    note1: 5,
    note2: 10,
    average: 7.5,
    teacherName: "Jean-REMI"
},
{
    name: "Relational Data Architecture",
    note1: 8,
    note2: 4,
    average: 6,
    teacherName: "Abrantes Araújo"
},
{
    name: "Back-End Programation",
    note1: 7,
    note2: 9,
    average: 8,
    teacherName: "Vinícius Rosalen"
}
]})

'<looking for students>'

db.students.find()

'<inserting Many students>'

db.students.insertMany([ {
    name: "Mary", 
    registration: 2,
    email: "Mary@outlook.com", 
    course: "Analysys and System Development",
    cep: 29101076,
    subjects: [{
        name: "Operational System",
        note1: 2,
        note2: 10,
        average: 6,
        teacherName: "Jean-REMI"
}]},
{
    name: "Matheus Souza", 
    registration: 3,
    email: "matheus_souza@outlook.com", 
    course: "Analysys and System Development",
    cep: 29105348,
    subjects: [{
        name: "Operational System",
        note1: 4,
        note2: 4,
        average: 10,
        teacherName: "Cristiano Biancardi"
}]
},
{
    name: "Julia da Silva", 
    registration: 4,
    email: "julia_silva@outlook.com", 
    course: "Analysys and System Development",
    cep: 29107075,
    subjects: [{
        name: "Software engineering",
        note1: 10,
        note2: 8,
        average: 9,
        teacherName: "Cristiano Biancardi"},
    {
        name: "Back-End Programation",
        note1: 7,
        note2: 9,
        average: 8,
        teacherName: "Vinícius Rosalen"
    }]
},
])

'<creating collection teachers>'

db.teachers.insertMany([{
    name: "Jean-Remi",
    registration: 2,
    formation: "doctorate degree",
    workload: 35,
    subjects:
    [{
        name1:"Operational System",
        name2:"Relational Data architecture 1",
        name3:"Relational Data architecture 2",
    }]},
{
    name: "Abrantes Araújo",
    registration: 3,
    formation: "doctorate degree",
    workload: 41,
    subjects:
    [{
        name1:"Relational Data architecture 2",
        name2:"Data Structure",
    }]
},
{
    name: "Vinícius Rosalen",
    registration: 4,
    formation: "master's degree",
    workload: 37,
    subjects:
    [{
        name1:"Back-End Programation",
        name2:"object-oriented programming",
    }]
}
])

'<Searching the collection of teachers, those whose workload is greater than 30 and less than 40 >'

db.teachers.find({$and : [{workload : {$gt : 30}}, {workload : {$lt : 40}}]})

'<Updating formation for a specific teacher>'

db.teachers.updateOne({
    name: "Vinicius Rosalen"
},
{
    $set: {formation : "postgraduate"}
})

'<removing all students from Vila Velha with cep 29100001 until 29129999>'

db.students.remove({
    $and : [{cep : {$gt: 29100001}}, {cep : {$lt: 29129999}}]
})

