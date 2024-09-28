//Content.tsx
import { ReactNode } from "react";
import "./styles.scss";
import { LoadingSpinner } from "../Loading/Spinner";

type ContentProps = {
  children?: ReactNode;
  content?: string;
  contentId?: number;
  isHTML?: boolean;
  isLoading: boolean;
};

export const Content = ({
  children,
  isHTML,
  content,
  contentId,
  isLoading,
}: ContentProps) => {
  return (
    <div className="quadro">
      <div className="conteudos">
        <div className="wrapConteudo">
          <div id="areaConteudos" className="mobile-content">
            <div className="home-conteudos">
              {isHTML && content !== undefined ? (
                <>
                  <div dangerouslySetInnerHTML={{ __html: content }} />
                  <LoadingSpinner isLoading={isLoading} />
                </>
              ) : (
                children
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
