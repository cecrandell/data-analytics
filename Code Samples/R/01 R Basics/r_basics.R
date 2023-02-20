students <- c("Abraham", "Beatrice", "Cory", "Dinah", "Eric", "Felicia")

attendance_sheets <- function(class){
  print(Sys.Date())
  for (student in class){
    print(student)
  }  
}

attendance_sheets(students)

locker_assignments <- function(class){
  for (student in class){
    new_combination <- sample(33,3)
    print(student)
    print(new_combination)
  }
}

locker_assignments(students)

for (student in students){
  second_letter <- substr(student,2,2)
  
  if (second_letter == 'e'){
    print(student)
    new_combination <- sample(33:66,3)
    print(new_combination)
  }
}
