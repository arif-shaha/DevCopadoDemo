import { LightningElement ,track } from 'lwc';
import getallacc from '@salesforce/apex/ImperativNovClass.getaaccountdata';

export default class Nov3LwcImperative extends LightningElement 
{  
   column = [
    {label :'Account Name', fieldName :'Name', Type:'text'},
    {label :'City', fieldName :'BillingCity', Type:'text'},
    {label :'Account Id', fieldName :'Id', Type:'text'},
    {label :'Account Fax', fieldName :'Fax', Type:'text'},
   ]
    @track accountList;
    @track goterror;
    connectedCallback()
    {
         getallacc()
         .then(result => {
            this.accountList = result;
         })
         .catch(error => {
            this.goterror = error;

         })

    }

}