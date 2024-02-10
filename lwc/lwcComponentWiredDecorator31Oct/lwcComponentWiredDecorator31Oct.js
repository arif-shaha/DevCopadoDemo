import { LightningElement,track,wire } from 'lwc';
import getData from '@salesforce/apex/ExampleWire31Oct.getdatafromclass';
export default class LwcComponentWiredDecorator31Oct extends LightningElement 
{
    @track dataFromClass;
    @track error;

    @wire(getData)
    geteDataFromWire({error,data})
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