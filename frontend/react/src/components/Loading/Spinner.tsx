import React from "react";
import { CircleLoader } from "react-spinners";
import "./styles.scss";

interface LoadingSpinnerProps {
  isLoading: boolean;
}

export const LoadingSpinner: React.FC<LoadingSpinnerProps> = ({
  isLoading,
}) => {
  const override = {
    display: "block",
    margin: "0 auto",
  };

  if (!isLoading) {
    return null;
  }

  return (
    <div className="spinner-container">
      <CircleLoader
        color={"#ccc"}
        loading={true}
        cssOverride={override}
        size={80}
      />
    </div>
  );
};
