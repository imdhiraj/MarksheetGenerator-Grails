function ValidateEmail(mail)
{
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
    {
        return (true)
    }
    alert("You have entered an invalid email address!")
    return (false)
}

function  AssignGradeandGradePoint(marksObtained.value) {
    if(marksObtained >=90){
        grade = "A+"
        gradePoint = 4.0
    }

    else if(marksObtained >=80 && marksObtained<90){
        grade = "A"
        gradePoint = 3.6
    }

    else if(marksObtained >=70 && marksObtained<80){
        grade = "B+"
        gradePoint = 3.2
    }

    else if(marksObtained >=60 && marksObtained<70){
        grade = "B"
        gradePoint = 2.8
    }

    else if(marksObtained >=50 && marksObtained<60){
        grade = "C+"
        gradePoint = 2.4
    }

    else if(marksObtained >=40 && marksObtained<50){
        grade = "C"
        gradePoint = 2.0
    }

    else if(marksObtained >=20 && marksObtained<40){
        grade = "D"
        gradePoint = 1.6
    }

    else if(marksObtained >=1 && marksObtained<20){
        grade = "E"
        gradePoint =0.8
    }
    else{
        grade = "N"
        gradePoint =0
    }


}