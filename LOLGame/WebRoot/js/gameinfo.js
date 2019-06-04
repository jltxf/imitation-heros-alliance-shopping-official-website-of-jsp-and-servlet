function change1() {
	hero = document.getElementById("hero");
	one = document.getElementById("one");
	two = document.getElementById("two");
	three = document.getElementById("three");
	type = document.getElementById("type");
	if (hero.innerHTML == "英雄"
			&& (itemdiv.style.display == "" || spelldiv.style.display == "")) {
		itemdiv.style.display = "none";
		spelldiv.style.display = "none";
		herodiv.style.display = "";
		one.className = "p-list1";
		two.className = "p-list2";
		three.className = "p-list3";
		type.innerHTML = "英雄";
	}
}

function change2() {
	item = document.getElementById("item");
	one = document.getElementById("one");
	two = document.getElementById("two");
	three = document.getElementById("three");
	type = document.getElementById("type");
	if (item.innerHTML == "物品"
			&& (herodiv.style.display == "" || spelldiv.style.display == "")) {
		herodiv.style.display = "none";
		spelldiv.style.display = "none";
		itemdiv.style.display = "";
		one.className = "p-list2";
		two.className = "p-list1";
		three.className = "p-list3";
		type.innerHTML = "物品";
	}
}

function change3() {
	spell = document.getElementById("spell");
	one = document.getElementById("one");
	two = document.getElementById("two");
	three = document.getElementById("three");
	type = document.getElementById("type");
	if (spell.innerHTML == "召唤师技能"
			&& (herodiv.style.display == "" || itemdiv.style.display == "")) {
		herodiv.style.display = "none";
		itemdiv.style.display = "none";
		spelldiv.style.display = "";
		one.className = "p-list2";
		two.className = "p-list3";
		three.className = "p-list1";
		type.innerHTML = "召唤师技能";
	}
}
