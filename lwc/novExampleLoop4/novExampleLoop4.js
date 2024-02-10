import { LightningElement,wire,track} from 'lwc';
import getdata from '@salesforce/apex/Nov4Class.allacount';

export default class NovExampleLoop4 extends LightningElement 
{   
    @track allDataFromClass;
    error;

    @wire(getdata)
    getdatafromclass({error,data})
    {
        if(data)
        {
            this.allDataFromClass = data;
        }
        else if(error)
        {
            this.error =error;
        }

    }
    
}