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
import { MachineDiagnService } from './MachineDiagn.service';
import 'rxjs/add/operator/toPromise';
@Component({
	selector: 'app-MachineDiagn',
	templateUrl: './MachineDiagn.component.html',
	styleUrls: ['./MachineDiagn.component.css'],
  providers: [MachineDiagnService]
})
export class MachineDiagnComponent implements OnInit {

  myForm: FormGroup;

  private allAssets;
  private asset;
  private currentId;
	private errorMessage;

  
      
          assetId = new FormControl("", Validators.required);
        
  
      
          toolCondition = new FormControl("", Validators.required);
        
  
      
          misalignment = new FormControl("", Validators.required);
        
  
      
          unbalance = new FormControl("", Validators.required);
        
  


  constructor(private serviceMachineDiagn:MachineDiagnService, fb: FormBuilder) {
    this.myForm = fb.group({
    
        
          assetId:this.assetId,
        
    
        
          toolCondition:this.toolCondition,
        
    
        
          misalignment:this.misalignment,
        
    
        
          unbalance:this.unbalance
        
    
    });
  };

  ngOnInit(): void {
    this.loadAll();
  }

  loadAll(): Promise<any> {
    let tempList = [];
    return this.serviceMachineDiagn.getAll()
    .toPromise()
    .then((result) => {
			this.errorMessage = null;
      result.forEach(asset => {
        tempList.push(asset);
      });
      this.allAssets = tempList;
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
   * @param {String} name - the name of the asset field to update
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
   * only). This is used for checkboxes in the asset updateDialog.
   * @param {String} name - the name of the asset field to check
   * @param {any} value - the enumeration value to check for
   * @return {Boolean} whether the specified asset field contains the provided value
   */
  hasArrayValue(name: string, value: any): boolean {
    return this[name].value.indexOf(value) !== -1;
  }

  addAsset(form: any): Promise<any> {
    this.asset = {
      $class: "org.maintenance.network.MachineDiagn",
      
        
          "assetId":this.assetId.value,
        
      
        
          "toolCondition":this.toolCondition.value,
        
      
        
          "misalignment":this.misalignment.value,
        
      
        
          "unbalance":this.unbalance.value
        
      
    };

    this.myForm.setValue({
      
        
          "assetId":null,
        
      
        
          "toolCondition":null,
        
      
        
          "misalignment":null,
        
      
        
          "unbalance":null
        
      
    });

    return this.serviceMachineDiagn.addAsset(this.asset)
    .toPromise()
    .then(() => {
			this.errorMessage = null;
      this.myForm.setValue({
      
        
          "assetId":null,
        
      
        
          "toolCondition":null,
        
      
        
          "misalignment":null,
        
      
        
          "unbalance":null 
        
      
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


   updateAsset(form: any): Promise<any> {
    this.asset = {
      $class: "org.maintenance.network.MachineDiagn",
      
        
          
        
    
        
          
            "toolCondition":this.toolCondition.value,
          
        
    
        
          
            "misalignment":this.misalignment.value,
          
        
    
        
          
            "unbalance":this.unbalance.value
          
        
    
    };

    return this.serviceMachineDiagn.updateAsset(form.get("assetId").value,this.asset)
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


  deleteAsset(): Promise<any> {

    return this.serviceMachineDiagn.deleteAsset(this.currentId)
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

    return this.serviceMachineDiagn.getAsset(id)
    .toPromise()
    .then((result) => {
			this.errorMessage = null;
      let formObject = {
        
          
            "assetId":null,
          
        
          
            "toolCondition":null,
          
        
          
            "misalignment":null,
          
        
          
            "unbalance":null 
          
        
      };



      
        if(result.assetId){
          
            formObject.assetId = result.assetId;
          
        }else{
          formObject.assetId = null;
        }
      
        if(result.toolCondition){
          
            formObject.toolCondition = result.toolCondition;
          
        }else{
          formObject.toolCondition = null;
        }
      
        if(result.misalignment){
          
            formObject.misalignment = result.misalignment;
          
        }else{
          formObject.misalignment = null;
        }
      
        if(result.unbalance){
          
            formObject.unbalance = result.unbalance;
          
        }else{
          formObject.unbalance = null;
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
      
        
          "assetId":null,
        
      
        
          "toolCondition":null,
        
      
        
          "misalignment":null,
        
      
        
          "unbalance":null 
        
      
      });
  }

}
