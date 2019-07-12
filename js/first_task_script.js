console.log("Вывод чисел от 10 до 20");
for(i = 10; i < 21; i++){
    console.log(i);
}
s = 0;//сразу для 3его пункта
console.log("Вывод квадратов чисел от 10 до 20");
for(i = 10;i < 21;i++){
    console.log(i*i);
    s = s + i;
}
console.log("Сумма всех чисел от 10 до 20:", s);