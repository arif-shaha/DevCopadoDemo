import { LightningElement } from 'lwc';
import {ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ToastNotificationExample extends LightningElement 
{
    onButtonClick()
    {
        const evnt = new ShowToastEvent(
            {
                title: 'This is error after clicking by arif',
                message: 'Arif click this button',
                variant: 'error'
            }

        );

        this.dispatchEvent(evnt);
    }
    onSuccess()
    {
        const evt = new ShowToastEvent(
            {
                title: 'This is success after clicking by arif',
                message: 'Arif click this button',
                variant: 'success'
            }

        );
        this.dispatchEvent(evt);
    }
    onWarning()
    {
        const warns = new ShowToastEvent(
            {
                title: 'This is warn after clicking by arif',
                message: 'Arif click this button',
                variant: 'warning'
            }

        );
        this.dispatchEvent(warns);

    }
    onInfo(){

        const infos = new ShowToastEvent(
        {
            title: 'This is info after clicking by arif',
            message: 'Arif click this button',
            variant: 'info'
        }

    );
    this.dispatchEvent(infos);
    } 
}