/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { Component, OnInit, Input } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { assetReportService } from './assetReport.service';
import 'rxjs/add/operator/toPromise';
@Component({
	selector: 'app-assetReport',
	templateUrl: './assetReport.component.html',
	styleUrls: ['./assetReport.component.css'],
  providers: [assetReportService]
})
export class assetReportComponent implements OnInit {

  myForm: FormGroup;

  private allTransactions;
  private Transaction;
  private currentId;
  private errorMessage;
  fileImportInput: any;
  csvRecords = [];
  
      
          assetDiagn = new FormControl("", Validators.required);
      
      
          assetProgn = new FormControl("", Validators.required);
        
  
      
          newToolCondition = new FormControl("", Validators.required);
        
  
      
          newMisalignment = new FormControl("", Validators.required);
        
  
      
          newUnbalance = new FormControl("", Validators.required);
        
  
      
          transactionId = new FormControl("", Validators.required);
        
  
      
          timestamp = new FormControl("", Validators.required);
      


  constructor(private serviceassetReport:assetReportService, fb: FormBuilder) {
    this.myForm = fb.group({
    
        
          assetDiagn:this.assetDiagn,
        
    
        
          assetProgn:this.assetProgn,
        
    
        
          newToolCondition:this.newToolCondition,
        
    
        
          newMisalignment:this.newMisalignment,
        
    
        
          newUnbalance:this.newUnbalance,
        
    
        
          transactionId:this.transactionId,
        
    
        
          timestamp:this.timestamp
        
    
    });
  };

  ngOnInit(): void {
    this.loadAll();
  }

  loadAll(): Promise<any> {
    let tempList = [];
    return this.serviceassetReport.getAll()
    .toPromise()
    .then((result) => {
			this.errorMessage = null;
      result.forEach(transaction => {
        tempList.push(transaction);
      });
      this.allTransactions = tempList;
    })
    .catch((error) => {
        if(error == 'Server error'){
            this.errorMessage = "Could not connect to REST server. Please check your configuration details";
        }
        else if(error == '404 - Not Found'){
				this.errorMessage = "404 - Could not find API route. Please check your available APIs."
        }
        else{
            this.errorMessage = error;
        }
    });
  }

	/**
   * Event handler for changing the checked state of a checkbox (handles array enumeration values)
   * @param {String} name - the name of the transaction field to update
   * @param {any} value - the enumeration value for which to toggle the checked state
   */
  changeArrayValue(name: string, value: any): void {
    const index = this[name].value.indexOf(value);
    if (index === -1) {
      this[name].value.push(value);
    } else {
      this[name].value.splice(index, 1);
    }
  }

	/**
	 * Checkbox helper, determining whether an enumeration value should be selected or not (for array enumeration values
   * only). This is used for checkboxes in the transaction updateDialog.
   * @param {String} name - the name of the transaction field to check
   * @param {any} value - the enumeration value to check for
   * @return {Boolean} whether the specified transaction field contains the provided value
   */
  hasArrayValue(name: string, value: any): boolean {
    return this[name].value.indexOf(value) !== -1;
  }

  addTransaction(form: any): Promise<any> {
    this.Transaction = {
      $class: "org.maintenance.network.assetReport",
      
        
          "assetDiagn":this.assetDiagn.value,
        
      
        
          "assetProgn":this.assetProgn.value,
        
      
        
          "newToolCondition":this.newToolCondition.value,
        
      
        
          "newMisalignment":this.newMisalignment.value,
        
      
        
          "newUnbalance":this.newUnbalance.value,
        
      
        
          "transactionId":this.transactionId.value,
        
      
        
          "timestamp":this.timestamp.value
        
      
    };
    this.myForm.setValue({
      
        
          "assetDiagn":null,
        
      
        
          "assetProgn":null,
        
      
        
          "newToolCondition":null,
        
      
        
          "newMisalignment":null,
        
      
        
          "newUnbalance":null,
        
      
        
          "transactionId":null,
        
      
        
          "timestamp":null
        
      
    });

    return this.serviceassetReport.addTransaction(this.Transaction)
    .toPromise()
    .then(() => {
			this.errorMessage = null;
      this.myForm.setValue({
      
        
          "assetDiagn":null,
        
      
        
          "assetProgn":null,
        
      
        
          "newToolCondition":null,
        
      
        
          "newMisalignment":null,
        
      
        
          "newUnbalance":null,
        
      
        
          "transactionId":null,
        
      
        
          "timestamp":null 
        
      
      });
    })
    .catch((error) => {
        if(error == 'Server error'){
            this.errorMessage = "Could not connect to REST server. Please check your configuration details";
        }
        else{
            this.errorMessage = error;
        }
    });
  }


   updateTransaction(form: any): Promise<any> {
    this.Transaction = {
      $class: "org.maintenance.network.assetReport",
      
        
          
            "assetDiagn":this.assetDiagn.value,

            "assetProgn":this.assetProgn.value,
            "newToolCondition":this.newToolCondition.value,          
            "newMisalignment":this.newMisalignment.value,

            "newUnbalance":this.newUnbalance.value,
            "timestamp":this.timestamp.value
          
        
    
    };

    return this.serviceassetReport.updateTransaction(form.get("transactionId").value,this.Transaction)
		.toPromise()
		.then(() => {
			this.errorMessage = null;
		})
		.catch((error) => {
            if(error == 'Server error'){
				this.errorMessage = "Could not connect to REST server. Please check your configuration details";
			}
            else if(error == '404 - Not Found'){
				this.errorMessage = "404 - Could not find API route. Please check your available APIs."
			}
			else{
				this.errorMessage = error;
			}
    });
  }


  deleteTransaction(): Promise<any> {

    return this.serviceassetReport.deleteTransaction(this.currentId)
		.toPromise()
		.then(() => {
			this.errorMessage = null;
		})
		.catch((error) => {
            if(error == 'Server error'){
				this.errorMessage = "Could not connect to REST server. Please check your configuration details";
			}
			else if(error == '404 - Not Found'){
				this.errorMessage = "404 - Could not find API route. Please check your available APIs."
			}
			else{
				this.errorMessage = error;
			}
    });
  }

  setId(id: any): void{
    this.currentId = id;
  }

  getForm(id: any): Promise<any>{

    return this.serviceassetReport.getTransaction(id)
    .toPromise()
    .then((result) => {
			this.errorMessage = null;
      let formObject = {
        
          
            "assetDiagn":null,
          
        
          
            "assetProgn":null,
          
        
          
            "newToolCondition":null,
          
        
          
            "newMisalignment":null,
          
        
          
            "newUnbalance":null,
          
        
          
            "transactionId":null,
          
        
          
            "timestamp":null 
          
        
      };



      
        if(result.assetDiagn){
          
            formObject.assetDiagn = result.assetDiagn;
          
        }else{
          formObject.assetDiagn = null;
        }
      
        if(result.assetProgn){
          
            formObject.assetProgn = result.assetProgn;
          
        }else{
          formObject.assetProgn = null;
        }
      
        if(result.newToolCondition){
          
            formObject.newToolCondition = result.newToolCondition;
          
        }else{
          formObject.newToolCondition = null;
        }
      
        if(result.newMisalignment){
          
            formObject.newMisalignment = result.newMisalignment;
          
        }else{
          formObject.newMisalignment = null;
        }
      
        if(result.newUnbalance){
          
            formObject.newUnbalance = result.newUnbalance;
          
        }else{
          formObject.newUnbalance = null;
        }
      
        if(result.transactionId){
          
            formObject.transactionId = result.transactionId;
          
        }else{
          formObject.transactionId = null;
        }
      
        if(result.timestamp){
          
            formObject.timestamp = result.timestamp;
          
        }else{
          formObject.timestamp = null;
        }
      

      this.myForm.setValue(formObject);

    })
    .catch((error) => {
        if(error == 'Server error'){
            this.errorMessage = "Could not connect to REST server. Please check your configuration details";
        }
        else if(error == '404 - Not Found'){
				this.errorMessage = "404 - Could not find API route. Please check your available APIs."
        }
        else{
            this.errorMessage = error;
        }
    });

  }

  resetForm(): void{
    this.myForm.setValue({
      
        
          "assetDiagn":null,
        
      
        
          "assetProgn":null,
        
      
        
          "newToolCondition":null,
        
      
        
          "newMisalignment":null,
        
      
        
          "newUnbalance":null,
        
      
        
          "transactionId":null,
        
      
        
          "timestamp":null 
        
      
      });
  }


  fileChangeListener($event): void {
    var text = [];
    var target = $event.target || $event.srcElement;
    var files = target.files;

    var input = $event.target;
    var reader = new FileReader();
    reader.readAsText(input.files[0]);

    reader.onload = (data) => {
      let csvData = reader.result;
      let csvRecordsArray = csvData.split(/\r\n|\n/);

      var dataArr = []

      for (let i = 0; i < csvRecordsArray.length; i++) {
        let data = csvRecordsArray[i].split(',');
        let col = [];
        for (let j = 0; j < data.length; j++) {
          col.push(data[j]);
        }
        dataArr.push(col);
      }   

      this.csvRecords = dataArr;

      for (var i = 0; i < this.csvRecords.length; i++) {   
        
        console.log(this.csvRecords.length);
        
        this.Transaction = {
          $class: "org.maintenance.network.assetReport",
          "assetDiagn": this.csvRecords[i][0],
          "assetProgn": this.csvRecords[i][1],
          "newToolCondition": this.csvRecords[i][2],
          "newMisalignment": this.csvRecords[i][3],
          "newUnbalance": this.csvRecords[i][4],
        };
        this.myForm.setValue({
          "assetDiagn": null,
          "assetProgn": null,
          "newToolCondition": null,
          "newMisalignment": null,
          "newUnbalance": null,
          "transactionId": null,
          "timestamp": null
        });

        this.serviceassetReport.addTransaction(this.Transaction)
          .toPromise()
          .then(() => {
            this.errorMessage = null;
            this.myForm.setValue({
              "assetDiagn": null,
              "assetProgn": null,
              "newToolCondition": null,
              "newMisalignment": null,
              "newUnbalance": null,
              "transactionId": null,
              "timestamp": null
            });
          })
          .catch((error) => {
            if (error == 'Server error') {
              this.errorMessage = "Could not connect to REST server. Please check your configuration details";
            }
            else {
              this.errorMessage = error;
            }
          });
      }

      if (this.csvRecords == null) {
        this.fileReset();
      }
    }
    reader.onerror = function () {
      alert('Unable to read ' + input.files[0]);
    };
  };

  fileReset() {
    this.fileImportInput.nativeElement.value = "";
    this.csvRecords = [];
  }


}

