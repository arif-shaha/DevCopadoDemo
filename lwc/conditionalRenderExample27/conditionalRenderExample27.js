import { LightningElement, track } from 'lwc';

export default class ConditionalRenderExample27 extends LightningElement 
{
    @track cardStatus=true;
    @track buttonLabel = 'Sign In';
    @track buttonLabel2 = 'Sign Up';

    buttonClickHandler(event)
    {   
        const label = event.target.label;
        if( label === 'Sign In')
        {
            this.buttonLabel = 'Sign Up';
            this.cardStatus = true;
        }
        else if( label === 'Sign Up' )
        {
            this.buttonLabel = 'Sign In';
            this.cardStatus = false;
        }
    }

}