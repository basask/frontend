/* eslint-disable @typescript-eslint/no-explicit-any */
/* eslint-disable react/jsx-props-no-spreading */
import React from "react";
import { Redirect, Route } from "react-router-dom";

import AuthLayout from "../../layouts/Auth";
import DefaultLayout from "../../layouts/Default";

export interface Props {
  path: string;
  name: string;
  component: any;
  isPrivate?: boolean;
  [x: string]: any; // dealing with ...rest
}

const RouteWrapper: React.FC<Props> = ({ component: Component, isPrivate, ...rest }: Props) => {
  // @TODO Get it from AuthContext with useAuth hook
  const signed = true;

  if (isPrivate && !signed) {
    return <Redirect to="/login" />;
  }

  if (!isPrivate && signed) {
    return <Redirect to="/" />;
  }

  const Layout = signed ? DefaultLayout : AuthLayout;

  return (
    <Route
      {...rest}
      render={(routeProps) => (
        <Layout>
          <Component {...routeProps} />
        </Layout>
      )}
    />
  );
};

export default RouteWrapper;