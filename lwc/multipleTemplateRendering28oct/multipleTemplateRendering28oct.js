import { LightningElement } from 'lwc';
import signIn from './signInTemp.html';
import signUp from './signUpTemp.html';
import defaultTemp from './multipleTemplateRendering28oct.html';

export default class MultipleTemplateRendering28oct extends LightningElement 
{
    selected =null;
    clickhandler(event)
    {
        this.selected = event.target.label;
        
    }
    render()
    {
        if(this.selected === 'Sign In')
        {
            return signIn;
        }
        else if(this.selected === 'Sign Up')
        {
            return signUp;
        }
        else
        {
            return defaultTemp;
        }
    }

}