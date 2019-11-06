import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import User, {} from '../../Models/User/User.Model';
@Injectable({
  providedIn: 'root'
})
export class LoginService {

  constructor(private http: HttpClient) { }

  updateUser(){

  }
  insertUser(){
    
  }
  deleteUser(user:User){
    return this.http.delete(""+user.Email);
  }
  consultUser(){
      return this.http.get("");
  }
}
