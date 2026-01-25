---
title: "Trombinoscope"
permalink: /trombi/
---

# Les visages de l'ASC Balan

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<div id="affichage-trombi">Chargement du trombinoscope...</div>

<script>
$(document).ready(function() {
    // On définit l'adresse racine de votre guide GitHub
    const baseUrl = "https://privefl.github.io/guideascbalan/";

    // On charge uniquement le div #photos
    $("#affichage-trombi").load(baseUrl + "trombinoscope.html #photos", function(response, status, xhr) {

        if (status === "success") {
            // Une fois le contenu chargé, on cherche toutes les images à l'intérieur
            $(this).find('img').each(function() {
                var currentSrc = $(this).attr('src');

                // Si l'image a un chemin relatif (ne commence pas par http)
                if (currentSrc && !currentSrc.startsWith('http')) {

                    // On nettoie le chemin : si le MD a mis un "/" au début, on le retire
                    if (currentSrc.startsWith('/')) {
                        currentSrc = currentSrc.substring(1);
                    }

                    // On reconstruit l'URL complète
                    $(this).attr('src', baseUrl + currentSrc);
                }
            });
            console.log("Trombinoscope chargé et images réparées.");
        } else {
            $("#affichage-trombi").html("<p>Erreur de chargement du trombinoscope.</p>");
            console.error("Erreur jQuery : " + xhr.status + " " + xhr.statusText);
        }
    });
});
</script>

<style>
    #affichage-trombi img {
        max-width: 200px; /* Ajustez selon vos besoins */
        height: auto;
        margin: 10px;
        border-radius: 8px;
    }
</style>
