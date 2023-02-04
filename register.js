const form = document.getElementById("registration-form");
const error = document.querySelector(".error");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const name = document.getElementById("name").value;
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  const confirmPassword = document.getElementById("confirm-password").value;
  const dob = document.getElementById("dob").value;
  const genderRadios = document.getElementsByName("gender");
  const profession = document.getElementById("profession").value;

  if (name.length < 10) {
    error.textContent = "Name must be at least 10 characters";
    return;
  }

  if (!email.includes("@") || !email.includes(".")) {
    error.textContent = "Invalid email address";
    return;
  }

  if (password.length === 0) {
    error.textContent = "Password is Empty";
    return;
  }

  if (password !== confirmPassword) {
    error.textContent = "Password and confirm password do not match";
    return;
  }

  const age = calculateAge(dob);
  if (age < 18) {
    error.textContent = "Age must be at least 18";
    return;
  }

  let selectedGender = false;
  for (let i = 0; i < genderRadios.length; i++) {
    if (genderRadios[i].checked) {
      selectedGender = true;
      break;
    }
  }
  if (!selectedGender) {
    error.textContent = "Please select a gender";
    return;
  }

  if (profession === "") {
    error.textContent = "Choose a value for profession";
    return;
  }

  // return;
  form.submit();
});

function calculateAge(dob) {
  const today = new Date();
  const birthDate = new Date(dob);
  let age = today.getFullYear() - birthDate.getFullYear();
  const m = today.getMonth() - birthDate.getMonth();
  if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
    age--;
  }
  return age;
}
