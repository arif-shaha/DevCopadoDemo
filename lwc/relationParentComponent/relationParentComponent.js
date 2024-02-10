import { LightningElement,track } from 'lwc';

export default class RelationParentComponent extends LightningElement 
{
    @track searchValue;
    handleSearchVal(event)
    {
        this.searchValue = event.detail;
    }
}