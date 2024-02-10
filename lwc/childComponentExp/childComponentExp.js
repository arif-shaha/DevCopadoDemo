import { LightningElement,api } from 'lwc';

export default class ChildComponentExp extends LightningElement 
{
    @api getValueFromParent;
}