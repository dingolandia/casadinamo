// TemplateDeafullt.tsx
import React, { useEffect, useRef, useState } from "react";
import { TitleBar } from "../TitleBar/TitleBar";
import { Content } from "../Content/Content";
import { fetchPageDataAsync } from "../../api/pagesApi/api";
import { LoadingSpinner } from "../Loading/Spinner";

interface TemplateDefaultProps {
  title: string;
  children?: React.ReactNode;
  content?: string;
  contentId?: number;
  isHTML?: boolean;
  isLoading: boolean;
  setLoading?: React.Dispatch<React.SetStateAction<boolean>>;
}

export const TemplateDefault: React.FC<TemplateDefaultProps> = ({
  title,
  children,
  content,
  contentId,
  isHTML,
  isLoading,
  setLoading,
}) => {
  const [pageContent, setPageContent] = useState<string>(content || "");
  const [renderHTML, setRenderHTML] = useState<boolean>(isHTML || false);
  const isFetchingRef = useRef(false);

  useEffect(() => {
    const callFetchDataAsync = async () => {
      if (typeof contentId != "undefined" && isFetchingRef.current === false) {
        isFetchingRef.current = true;
        console.log("contentId", contentId);
        setLoading && setLoading(true);
        setRenderHTML(true);
        fetchPageDataAsync(contentId)
          .then((data) => {
            setPageContent(data.conteudo);
            setLoading && setLoading(false);
          })
          .catch((error) => {
            console.error(error);
          })
          .finally(() => {
            setLoading && setLoading(false);
            isFetchingRef.current = false;
          });
      }
    };
    callFetchDataAsync();
  }, [contentId, setLoading]);

  return (
    <>
      <TitleBar title={title} />
      <Content
        isHTML={renderHTML}
        content={pageContent}
        contentId={contentId}
        isLoading={isLoading}
      >
        {children}
        <LoadingSpinner isLoading={isLoading} />
      </Content>
    </>
  );
};
