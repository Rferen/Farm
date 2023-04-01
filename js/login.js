//user database
let users = [
  {userName: 'RFeri',
  password: 'FeriPassword',
  email: 'r.feri@gmail.com'       
  },
  {userName: 'JMari',
    password: 'MariPassword',
    email: 'j.mari@gmail.com'       
  },
  {userName: 'KPityi',
  password: 'PityiPassword',
  email: 'k.pityi@gmail.com'       
  },
];

// elements
let user =''
const userName = document.getElementById('userNameLogin');
const password = document.getElementById('passwordLogin');
const loginButton = document.getElementById('loginButton');
const userNameRegistration = document.getElementById('userNameRegistrarion');
const emailRegistration = document.getElementById('emailRegistration');
const passwordRegistration = document.getElementById('passwordRegistration'); 
const passwordRegistrationAgain = document.getElementById('passwordRegistrationAgain');
const accept = document.getElementById('accept'); 
const signinButton =document.getElementById('signinButton');

loginButton.addEventListener('click', login);
signinButton.addEventListener('click', signin);

//login
function login(event) {
  event.preventDefault();
  if (userName.value && password.value) {
    let loginName = userName.value; 
    let loginPassword = password.value;
    let success = false;
    for (let i = 0; i < users.length; i++) {
      if  (users[i].userName === loginName && users[i].password ===loginPassword)  {
        user=users[i].userName;
        success=true;
        break;
      }
    }
    userName.value=""
    password.value="";
    document.querySelector('label[for="userNameLogin"]').innerText = " Username";
    document.querySelector('label[for="passwordLogin"]').innerText = "Password";
    if (!success) {
      alert("Hibás felhasználó név/jelsző!")
    }
  } else {
    document.querySelector('label[for="userNameLogin"]').innerText = " Username A mező kitöltése kötelezpő!";
    document.querySelector('label[for="passwordLogin"]').innerText = "Password A mező kitöltése kötelezpő!";
  }  
}

//Registration
function signin(event) {
  event.preventDefault(); 
  if (userNameRegistration.value && emailRegistration.value && passwordRegistration.value && passwordRegistrationAgain.value && accept.checked)  {
    if (passwordRegistration.value === passwordRegistrationAgain.value) {
      let newUserName = userNameRegistration.value; 
      let newPassword = passwordRegistration.value;
      let newEmail = emailRegistration.value;
      let newUser={
        userName: newUserName, 
        password: newPassword,
        email: newEmail}; 
      users = users.concat(newUser);
      userNameRegistration.value = "";
      emailRegistration.value = "";
      passwordRegistration.value = "";
      passwordRegistrationAgain.value = "";
      accept.checked=false;
      document.querySelector('label[for="userNameRegistrarion"]').innerText = "Username";
    document.querySelector('label[for="emailRegistration"]').innerText = "Email cím";
    document.querySelector('label[for="passwordRegistration"]').innerText = "Password";
    document.querySelector('label[for="passwordRegistrationAgain"]').innerText = "Password újra";
    document.querySelector('label[for="accept"]').innerText = "Elfogadom a Felhasználói feltételekett.";
      console.log(users);  
    }
    else{
      document.querySelector('label[for="passwordRegistration"]').innerText = "A jelszavak nem egyeznek!";
      document.querySelector('label[for="passwordRegistrationAgain"]').innerText = "A jelszavak nem egyeznek!";
    }
    userNameRegistration.value.value = "";
    emailRegistration.value.value = "";
    passwordRegistration.value = "";
    passwordRegistrationAgain.value = "";
    accept.checked =false;
  } else {
    document.querySelector('label[for="userNameRegistrarion"]').innerText = "Username A mező kitöltése kötelezpő!";
    document.querySelector('label[for="emailRegistration"]').innerText = "Email cím A mező kitöltése kötelezpő!";
    document.querySelector('label[for="passwordRegistration"]').innerText = "Password A mező kitöltése kötelezpő!";
    document.querySelector('label[for="passwordRegistrationAgain"]').innerText = "Password újra A mező kitöltése kötelezpő!";
    document.querySelector('label[for="accept"]').innerText = "Elfogadom a Felhasználói feltételekett. \nA mező kitöltése kötelezpő!";
  }  
}
