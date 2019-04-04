import React, {Component} from 'react';
import { observer } from "mobx-react";

@observer
export default class MyHomeContainer extends Component
{
    render(){
        return(
            <div>
                <h1>欢迎来到我的首页！</h1>
                <h2>Welcome To My Home!</h2>
            </div>
        )
    }
}