/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ullist = document.getElementById("vaccinelist");
var item = document.querySelectorAll("#vaccinelist-item");

function ActiveItem() {
    item.forEach(list_item => list_item.classList.remove("active"));
    this.classList.add("active");
}
ullist.style.display = "block";

item.forEach(
        list_item => list_item.addEventListener("click", ActiveItem())
);




