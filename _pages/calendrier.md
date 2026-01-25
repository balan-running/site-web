---
title: "Calendrier"
permalink: /agenda/
---

Vous retrouverez dans ce calendrier le programme des entraînements du mardi et du jeudi, ainsi que les courses du coin, et les évènements du club.

<style>
  /* Conteneur de base */
  .calendrier-container {
    position: relative;
    width: 100%;
    background: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    overflow: hidden;
  }

  /* Version Bureau : on garde votre système de ratio */
  .view-desktop { display: block; }
  .view-mobile  { display: none; }

  .h_iframe_desktop { position: relative; width: 100%; }
  .h_iframe_desktop .ratio { display: block; width: 100%; height: auto; }
  .h_iframe_desktop iframe { 
    position: absolute; top: 0; left: 0; width: 100%; height: 100%; 
  }

  /* Version Mobile : hauteur fixe de 500px pour la liste */
  @media (max-width: 768px) {
    .view-desktop { display: none; }
    .view-mobile  { display: block; height: 500px; }
    .view-mobile iframe { width: 100%; height: 100%; border: 0; }
  }
</style>

<div class="calendrier-container">
  
  <div class="view-desktop">
    <div class="h_iframe_desktop">
      <img class="ratio" src="https://placehold.co/600x350?text=Chargement+du+calendrier..."/>
      <iframe src="https://calendar.google.com/calendar/embed?src=6c500f8477e391525c62ee82fe0416a3caa043fd8c17eb20da1beebb48f21dbe%40group.calendar.google.com&ctz=Europe%2FParis&wkst=2&mode=MONTH" frameborder="0" scrolling="no"></iframe>
    </div>
  </div>

  <div class="view-mobile">
    <iframe src="https://calendar.google.com/calendar/embed?src=6c500f8477e391525c62ee82fe0416a3caa043fd8c17eb20da1beebb48f21dbe%40group.calendar.google.com&ctz=Europe%2FParis&wkst=2&mode=AGENDA&showTabs=0&showPrint=0" frameborder="0" scrolling="yes"></iframe>
  </div>

</div>
