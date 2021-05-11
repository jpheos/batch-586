const students = Array.from(document.querySelectorAll('.clasmates-student-links strong')).map(e => e.innerText)
const getRandomFromList = list => list[Math.floor(Math.random() * list.length)];

const alreadyChosenStudents = [];    

const getNewStudent = (students, alreadySeenStudents) => {
    const studentsLeftToChose = students.filter(x => !alreadySeenStudents.includes(x));
    const student = getRandomFromList(studentsLeftToChose)
    alreadySeenStudents.push(student)
    return student;
}

getNewStudent(students, alreadyChosenStudents)


