import React, { useState } from "react";
import { useSpring, animated, config } from "react-spring";
import "./YourStyles.css"; // Importe seus estilos CSS

const Animation: React.FC = () => {
  const [indice, setIndice] = useState(0);

  const vetTxtAnimIn: string[] = [
    "bounce",
    "flash",
    "pulse",
    // ...outras classes de animação
  ];

  const vetTxtAnimOut: string[] = [
    "fadeOutDown",
    "slideOutUp",
    "slideOutRight",
    // ...outras classes de animação
  ];

  const nextAnimation = () => {
    setIndice((indice + 1) % vetTxtAnimIn.length);
  };

  const springProps = useSpring({
    from: { transform: "scale(0)", opacity: 0 },
    to: { transform: "scale(1)", opacity: 1 },
    config: config.molasses,
  });

  return (
    <div className="dingAnimation">
      <animated.div
        style={{
          transform: springProps.transform.to((t: string) => `${t}`),
          opacity: springProps.opacity.to((o: number) => o),
        }}
        className={`dingAnimated animate__animated animate__${
          vetTxtAnimIn[indice]
        }`}
      >
        <span>Your text here</span>
      </animated.div>

      <button onClick={nextAnimation}>Next Animation</button>
    </div>
  );
};

export default Animation;
