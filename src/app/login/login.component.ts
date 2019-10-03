import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private fb: FormBuilder) { }
  submitted = false;
  loginForm = this.fb.group({
    username: [''],
    password: [''],
  });

  onReset() {
    this.submitted = false;
    this.loginForm.reset();
  }

  ngOnInit() {
  }

}
