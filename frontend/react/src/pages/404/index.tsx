import React from "react";
import "./styles.scss";
import { TemplateDefault } from "../../components/Templates/TemplateDefault";
import { pageNotFound, pageNotFoundDescription } from "../../constants/global";

export const NotFoundPage: React.FC<{ isLoading: boolean }> = ({
  isLoading,
}) => {
  return (
    <TemplateDefault title="404" isLoading={isLoading}>
      <div>
        <h1>404 - {pageNotFound}</h1>
        <p>{pageNotFoundDescription}</p>
      </div>
    </TemplateDefault>
  );
};
