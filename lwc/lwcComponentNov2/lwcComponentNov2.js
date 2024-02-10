import { LightningElement,wire,track } from 'lwc';
import getdata from '@salesforce/apex/classfordata.getdatafromdb';

export default class LwcComponentNov2 extends LightningElement 
{
    
    @track accountList;
    @track errorfromclass;

    column =[
        {label : 'Acc Name By Arif', fieldName :'Name', type : 'text'},
        {label : 'City', fieldName :'BillingCity', type : 'text'},
        {label : 'Account Id', fieldName :'Id', type : 'text'},
        {label : 'Acc Fax', fieldName :'Fax', type : 'text'}
    ]

    @wire(getdata)
    datafromclass({error,data})
    {
        if(data)
        {
            this.accountList = data;
        }
        else if(error)
        {
            this.errorfromclass = error;
        }
    }

}