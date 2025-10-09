var ul =document.getElementById("lista")
let url= "https://thesimpsonsapi.com/api/"
let arr_original =[]
var lis=""
var getlista= (page)=>{
fetch(url+"characters?page="+page).then(response=>{
      if(!response.ok){
        console.log("Error en la red")
      }
      return response.json()
}).then(data=>{
    console.log("Datos del personaje: ",data)
    
    data.results.forEach(personaje=>{
        arr_original.push({
          personaje:personaje,
          datos:null

        })
         lis+=`
         <li>
         <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
         <h2>${personaje.name}</h2>
         </li>`
    })
    ul.innerHTML = lis
    console.log("Arreglo Final",arr_original)
})
}
for(let i=1; i<=5;i++){
  getlista(i)
}
setTimeout(()=>{
  document.getElementById("preloader").style.display="none"
},2000)

const imprimir = (arr)=>{
  var todo="";
  arr.forEach(item=>{
    todo+=`
         <li>
         <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px" />
         <h2>${item.personaje.name}</h2>
         </li>`
  })
  ul.innerHTML=todo
}
document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
  evt.preventDefault()
  imprimir(arr_original)
})

//Los que estan muertos
document.querySelector("#muertos").addEventListener('click',(evt)=>{
  //evitar recarga
  evt.preventDefault()
  let res = arr_original.filter((item)=>item.personaje.status =="Deceased" && item.personaje.status !=null)
  imprimir(res)
})

//Menores de edad
document.querySelector("#menoredad").addEventListener('click',(evt)=>{
  //evitar recarga
  evt.preventDefault()
  let res = arr_original.filter((item)=>item.personaje.age < 18 && item.personaje.age!=null)
  console.log("edad",res)
  imprimir(res)
})

//Promedio de edad
document.querySelector("#promedioEdad").addEventListener('click',(evt)=>{
  //evitar recarga
  evt.preventDefault()
  let edades = arr_original
    .map((item)=>item.personaje.age)
    .filter((age)=>age!=null);
  let promedio =edades.reduce((acc,curr) => acc+curr,0)/edades.length || 0;
  alert("Promnedio de Edad: " + promedio.toFixed(2));
})

//Ordenar por edad ASC
document.querySelector("#edadASC").addEventListener('click',(evt)=>{
  evt.preventDefault()
  let res = arr_original
    .sort((a, b) => a.personaje.age - b.personaje.age)
  imprimir(res)
})

//Mostrar el mas viejo y mas joven
document.querySelector("#vyj").addEventListener('click', (evt) => {
  evt.preventDefault()
  let conEdad = arr_original.filter(item => item.personaje.age != null)
  if (conEdad.length === 0) return

  let ordenados = [...conEdad].sort((a, b) => a.personaje.age - b.personaje.age)
  let joven = ordenados[0]
  let viejo = ordenados[ordenados.length - 1]
  imprimir([joven, viejo])
})

//Mostrar los que son estudiantes
document.querySelector("#estudiantes").addEventListener('click', (evt) => {
  evt.preventDefault()

  let res = arr_original.filter(item => {
    let ocupacion = item.personaje.occupation
    return ocupacion && ocupacion.toLowerCase().includes("student")
  })

  imprimir(res)
})


//Mostrar los items la fecha de nacimiento sea < 1980/02/01
document.querySelector("#birthDate").addEventListener('click', (evt)=>{
  evt.preventDefault()
  let fechaLimite = new Date("1980-02-01")
  let res = arr_original.filter(item => {
    if (!item.personaje.birthdate) return false
    let fechaNacimiento = new Date(item.personaje.birthdate)
    return fechaNacimiento < fechaLimite
  })
  imprimir(res)
})

//Buscador por frases
