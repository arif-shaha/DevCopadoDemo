import { LightningElement,wire} from 'lwc';
import { subscribe,MessageContext } from 'lightning/messageService';
import COUNTER_FILE from '@salesforce/messageChannel/updatecounter__c';

export default class ExampleSubscriberComponent extends LightningElement 
{
    counter = 0;
    subscription = null;

    @wire(MessageContext)
    messagecontext;

    connectedCallBack()
    {
        this.subscribeToMessageChannel();
    }

    subscribeToMessageChannel()
    {
        this.subscription = subscribe(
            this.messagecontext,
            COUNTER_FILE,
            (message)=> this.handleMessage(message)

        )
    }
    handleMessage(message)
    {
        if(message.operator == 'add')
        {
            this.counter += message.constant;
        }
        else if(message.operator == 'sub')
        {
            this.counter -= message.constant;
        }
    }
}