import { LightningElement,wire} from 'lwc';
import { publish, MessageContext} from 'lightning/messageService';
import COUNTER_FILE from '@salesforce/messageChannel/updatecounter__c';

export default class ExamplePublisherComponent extends LightningElement 
{   
    @wire(MessageContext)
    messagecontext;
    handleAddition()
    {
        const payload = {
            operator: 'add',
            constant: 1
        };
        publish(this.messagecontext, COUNTER_FILE, payload);
    }
    handleSubstraction()
    {   
        const payload = {
            operator: 'sub',
            constant: 1
        };
        publish(this.messagecontext, COUNTER_FILE, payload);
    }    
}