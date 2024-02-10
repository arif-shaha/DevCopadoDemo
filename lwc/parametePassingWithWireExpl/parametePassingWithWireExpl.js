import { LightningElement} from 'lwc';
export default class ParametePassingWithWireExpl extends LightningElement 
{

    handleInputChange(event) {
        // Access the input value
        const inputValue = event.target.value;

        // Log the value to the console
        console.log('Input Changed:', inputValue);
    }
}