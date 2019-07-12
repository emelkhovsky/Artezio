function buttonClick(){
	x1 = document.getElementById('x1').value;
	x2 = document.getElementById('x2').value;

	if (document.querySelector('input[name = "make_choice"]:checked') != null){//делаю проверку на null, ибо в противном случае выдвет typeerror:(
		num = document.querySelector('input[name = "make_choice"]:checked').value;//Значение выбора пользователя для 4ого пункта
	}
	else{
		num = 0;
	}
	
	if(!x1 || !x2){ //2ой пункт
		alert("Поля x1 и x2 должны быть заполнены :(");
	}
	else if((isNaN(+x1) || isNaN(+x2))){//+ переводит строку в число,если там только число и в строку, если есть посторонние символы
		alert("Можно вводить только цифры :(");
	}
	else{
		x1 = parseInt(x1);
		x2 = parseInt(x2);
		result = document.getElementById('result');
		result.innerHTML = '';//1ый пункт(очистка вывода)
		result.append("Список простых чисел: ");
		for(i = x1;i < x2 + 1;i++){//6ой пункт
			if(i > 1){//проверка для случаев с отрицательными  числами, 0 и 1
				t = 0;//счетчик делителей
				for(j = 2;j < i + 1;j++){
					if(i % j ==0){
						t++;
					}
				}
				if(t == 1){
					result.append(i + ', ');
				}
			}
		}
		result.append("x1+x2="+(x1+x2)+", ");//эта операция выполняется вне зависимости от выбора пользователя
		if(num == 1){
			s = 0;
			for (i = x1; i < x2 + 1;i++){
				s = s + i;
			}
			result.append("Сумма чисел равна:" + s + " ");//3ий пункт
		}
		else if(num == 2){
			s = 1;
			for (i = x1; i < x2 + 1;i++){
				s = s * i;
			}
			result.append("Произведение чисел равно:" + s + " ");
		}
		else{
			alert("Пожалуйста, выберете нужную операцию:)");
		}
		
	}
}
function Clear(){//4ый пункт
	document.getElementById('x1').value = '';
	document.getElementById('x2').value = '';
}