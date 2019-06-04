function $(id) {
	return document.getElementById(id);// 找到id
}

function get1() {
	all = $("all");
	// alert(Fighter.innerHTML);
	if (all.innerHTML == "所有英雄") {
		$("allhero").className = "selete-item current";// selete-item
		// current为新的属性值
		$("allFighter").className = "selete-item";
		$("allMage").className = "selete-item";
		$("allAssassin").className = "selete-item";
		$("allTank").className = "selete-item";
		$("allMarksman").className = "selete-item";
		
		ulall.style.display = "";
		ulfighter.style.display = "none";
		ulmage.style.display = "none";
		ulassassin.style.display = "none";
		ultank.style.display = "none";
		ulmarksman.style.display = "none";
	}
}

function get2() {
	Fighter = $("Fighter");
	if (Fighter.innerHTML == "战士") {
		$("allhero").className = "selete-item";
		$("allFighter").className = "selete-item current";
		$("allMage").className = "selete-item";
		$("allAssassin").className = "selete-item";
		$("allTank").className = "selete-item";
		$("allMarksman").className = "selete-item";
		ulall.style.display = "none";
		ulfighter.style.display = "";
		ulmage.style.display = "none";
		ulassassin.style.display = "none";
		ultank.style.display = "none";
		ulmarksman.style.display = "none";
	}
}

function get3() {
	Mage = $("Mage");
	if (Mage.innerHTML == "法师") {
		$("allhero").className = "selete-item";
		$("allFighter").className = "selete-item";
		$("allMage").className = "selete-item current";
		$("allAssassin").className = "selete-item";
		$("allTank").className = "selete-item";
		$("allMarksman").className = "selete-item";
		ulall.style.display = "none";
		ulfighter.style.display = "none";
		ulmage.style.display = "";
		ulassassin.style.display = "none";
		ultank.style.display = "none";
		ulmarksman.style.display = "none";
	}
}

function get4() {
	Assassin = $("Assassin");
	if (Assassin.innerHTML == "刺客") {
		$("allhero").className = "selete-item";
		$("allFighter").className = "selete-item";
		$("allMage").className = "selete-item";
		$("allAssassin").className = "selete-item current";
		$("allTank").className = "selete-item";
		$("allMarksman").className = "selete-item";
		ulall.style.display = "none";
		ulfighter.style.display = "none";
		ulmage.style.display = "none";
		ulassassin.style.display = "";
		ultank.style.display = "none";
		ulmarksman.style.display = "none";
	}
}

function get5() {
	Tank = $("Tank");
	if (Tank.innerHTML == "坦克") {
		$("allhero").className = "selete-item";
		$("allFighter").className = "selete-item";
		$("allMage").className = "selete-item";
		$("allAssassin").className = "selete-item";
		$("allTank").className = "selete-item current";
		$("allMarksman").className = "selete-item";
		ulall.style.display = "none";
		ulfighter.style.display = "none";
		ulmage.style.display = "none";
		ulassassin.style.display = "none";
		ultank.style.display = "";
		ulmarksman.style.display = "none";
	}
}

function get6() {
	Marksman = $("Marksman");
	if (Marksman.innerHTML == "射手") {
		$("allhero").className = "selete-item";
		$("allFighter").className = "selete-item";
		$("allMage").className = "selete-item";
		$("allAssassin").className = "selete-item";
		$("allTank").className = "selete-item";
		$("allMarksman").className = "selete-item current";
		ulall.style.display = "none";
		ulfighter.style.display = "none";
		ulmage.style.display = "none";
		ulassassin.style.display = "none";
		ultank.style.display = "none";
		ulmarksman.style.display = "";
	}
}

