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
console.log(targetText);
const textList = document.querySelector(".index");
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