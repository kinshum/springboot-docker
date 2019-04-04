import React, {Component} from 'react';
import {Route, Link} from 'react-router-dom';
import { inject } from "mobx-react";
import LazyRoute from "lazy-route";

@inject("store")
export default class IndexRouter extends Component
{
    render()
    {
        return(
            <div>
                <Route path="/Login" render={props => (
                    <LazyRoute store={this.props.store.LoginStore} component={import("./Module/Login/LoginContainer")} />
                )}/>
                <Route path="/Frame" render={props => (
                    <LazyRoute  component={import("./Module/Frame/FrameContainer")} />
                )}/>
            </div>
        );
    }
}