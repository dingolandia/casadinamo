import React, { useState } from "react";
import { InnerImageZoom } from "react-inner-image-zoom";
import "react-inner-image-zoom/lib/InnerImageZoom/styles.css";

import { IMedia } from "../../types/iEcommerce";
import { fullUrl } from "../../constants/uriEndPoints";

import { Swiper, SwiperSlide, SwiperClass } from "swiper/react";
import { Autoplay, FreeMode, Navigation, Thumbs } from "swiper/modules";

import "swiper/css";
import "swiper/css/free-mode";
import "swiper/css/navigation";
import "swiper/css/thumbs";
import "swiper/css/bundle";
import "./styles.scss";

interface CarouselPhotoZoomProps {
  media: IMedia[];
}

export const CarouselPhotoZoom: React.FC<CarouselPhotoZoomProps> = ({
  media,
}) => {
  const [thumbsSwiper, setThumbsSwiper] = useState<SwiperClass>();

  return (
    <div id="gallery" className="ad-gallery">
      <div>
        <Swiper
          centeredSlides={true}
          enabled={true}
          loop={true}
          autoplay={{
            delay: 2500,
            pauseOnMouseEnter: true,
            disableOnInteraction: false,
          }}
          spaceBetween={10}
          navigation={true}
          thumbs={{ swiper: thumbsSwiper && !thumbsSwiper.destroyed ? thumbsSwiper : null }}
          modules={[Autoplay, FreeMode, Navigation, Thumbs]}
          className="swiper-dinamo-carousel"
        >
          {media.map((item) => (
            <SwiperSlide key={item.id}>
              <InnerImageZoom
                src={fullUrl + item?.url}
                zoomSrc={fullUrl + item?.url}
                zoomType="hover"
                zoomPreload={true}
              />
            </SwiperSlide>
          ))}
        </Swiper>

        <Swiper
          loop={true}
          spaceBetween={18}
          slidesPerView={5}
          freeMode={true}
          watchSlidesProgress={true}
          modules={[FreeMode, Navigation, Thumbs]}
          onSwiper={setThumbsSwiper as any}
          className="swiper-dinamo"
        >
          {media.map((item, index) => (
            <SwiperSlide key={`thumb-${index}`}>
              <img
                src={fullUrl + item.formats.thumbnail.url}
                alt={`thumb-${index}`}
              />
            </SwiperSlide>
          ))}
        </Swiper>
      </div>
    </div>
  );
};
