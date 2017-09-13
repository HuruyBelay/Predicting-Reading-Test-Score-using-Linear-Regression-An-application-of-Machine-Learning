## Predicting-Reading-Test-Score-using-Linear-Regression-An-application-of-Machine-Learning

Linear regression is one of the algorithms in machine learning to predict the output for a new data based on the previous data set. 
The goal of this post is:
-	To build a model and select the best model using linear regression in R
-	To predict the Reading Score of Students
I used linear regression to model the reading score of the students using the training data. And I select the best model based on their R-squared, RMSE value and the number of parameters. The RMSE of the selected model is slightly higher in comparison with the other models. However, the numbers of parameters of the selected model are small and therefore, it is simple and interpretable model.
Based on the best selected model I concluded:
Grade of the student, the student`s bachelor's degree, the student's mother obtained a bachelor's degree, the student's father obtained a bachelor's degree, the student has access to a computer for schoolwork, the student reads for pleasure for 30 minutes/day and number of students in school in positively associated with reading score of the student. 
Being male, American Indian/Alaska Native in race/ethnicity, black in race/ethnicity, Hispanic in race/ethnicity and student attends a public school are negatively associated with reading score of the student.
Based on the selected model I predicted the reading score of the students. The minimum and maximum predicted reading score is 356.8 and 634.5, respectively.


