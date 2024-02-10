import { LightningElement,wire,track } from 'lwc';
import getData from'@salesforce/apex/ExampleWire31Oct.getdatafromclass';
export default class LwcCompWireDecoOct31Example extends LightningElement 
{
    @track dataFromClass;
    @track error;

    column = [
        {label : 'Account Name',fieldName : 'Name'},
        {label : 'City',fieldName : 'BillingCity'},
        {label : 'Fax',fieldName : 'Fax'},
        {label : 'Account Phone',fieldName : 'Phone'}
    ]
            

    @wire(getData)
    getdatafromwire({error,data})
    {
        if(data)
        {
           this.dataFromClass = data; 
        }
        else if(error)
        {
            this.error = error;
        }

    }

}