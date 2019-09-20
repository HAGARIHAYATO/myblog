// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

require("trix")
require("@rails/actiontext")
//= require jquery3
//= require popper
//= require bootstrap-sprockets

const targetText = document.querySelectorAll(".trix-content h1");
const textList = document.querySelector(".index");
const toggle1 = document.querySelector(".drop1");
const toggle2 = document.querySelector(".drop2");
const box1 = document.querySelector(".drop1__box");
const box2 = document.querySelector(".drop2__box");
let num1 = 0;
let num2 = 0;
//目次
document.addEventListener('DOMContentLoaded', ()=>{
	const div = document.createElement('div');
	//#######check#######
    targetText.forEach((value,i)=>{
    	let id = value.id;
    	if(id === ''){
    		id = value.textContent + i;
    		value.id = id;
    	}

    	if(value.tagName === 'H1'){
    		const ul = document.createElement('ul');
    		const li = document.createElement('li');
    		const a = document.createElement('a');

    		a.innerHTML = value.textContent;
    		a.href = '#' + value.id;
    		li.appendChild(a);
    		ul.appendChild(li);
    		div.appendChild(ul);
    	}
    });
    textList.appendChild(div);
});
//ドロップダウンメニュー
toggle1.addEventListener('click',()=>{
    num1++;
    if(num1%2 !== 0){
        box1.style.display="block";
        box2.style.display="none";
        num2 = 0;
    }else{
        num1 = 0;
        box1.style.display="none";
    }
});

toggle2.addEventListener('click',()=>{
    num2++;
    if(num2%2 !== 0){
        box2.style.display="block";
        box1.style.display="none";
        num1 = 0;
    }else{
        num2 = 0;
        box2.style.display="none";
    }
});






