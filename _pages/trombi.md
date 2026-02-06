---
title: "Trombinoscope"
permalink: /trombi/
---

# Les visages de l'ASC Balan

<div id="loader" style="text-align: center; padding: 20px; color: #666;">Chargement des photos...</div>
<div id="photos" style="display: flex; flex-wrap: wrap; justify-content: center; align-content: flex-start;"></div>

<script>
document.addEventListener("DOMContentLoaded", function() {

    // Configuration
    const owner = "privefl";
    const repo = "guideascbalan";
    const path = "trombi";
    
    // Modification technique : URL rapide
    const baseUrl = "https://guide.balan-running.fr/trombi/";

    // URL de l'API GitHub pour lister le contenu du dossier
    const apiUrl = `https://api.github.com/repos/${owner}/${repo}/contents/${path}`;

    fetch(apiUrl)
        .then(response => {
            if (!response.ok) throw new Error("Erreur API GitHub");
            return response.json();
        })
        .then(data => {
            const container = document.getElementById('photos');
            const loader = document.getElementById('loader');

            // 1. On filtre pour ne garder que les images PNG
            const images = data.filter(file => file.name.match(/\.png$/i));

            if (images.length === 0) {
                loader.innerHTML = "Aucune photo trouvée.";
                return;
            }

            // 2. On génère le HTML pour chaque image
            images.forEach(file => {
                const filename = file.name.replace(/\.png$/i, '');
                const parts = filename.split('_');

                let prenom = "";
                let nom = "";

                if (parts.length >= 2) {
                    prenom = capitalize(parts[0]);
                    nom = capitalize(parts[1]);
                } else {
                    prenom = capitalize(filename);
                }

                // CORRECTION ICI : On utilise baseUrl + nom du fichier au lieu de download_url
                const imageUrl = baseUrl + file.name;

                const card = document.createElement('div');
                // Votre style original conservé
                card.style.cssText = `
                    flex: 1 1 88px;
                    height: 190px;
                    margin: 6px;
                    text-align: center;
                    vertical-align: top;
                `;

                card.innerHTML = `
                    <img src="${imageUrl}" alt="${prenom} ${nom}" style="width:100%; max-width:95px; border-radius:8px; cursor: pointer;" loading="lazy">
                    <br>
                    <div style="height:70px; overflow:hidden; line-height:1.3em; font-size: 0.9em; margin-top:3px;">
                        <strong>${prenom}</strong><br>${nom}
                    </div>
                `;

                container.appendChild(card);
            });

            loader.style.display = 'none';
        })
        .catch(error => {
            document.getElementById('loader').innerHTML = "⚠️ Impossible de charger les photos.";
            console.error(error);
        });

    function capitalize(str) {
        return str.toLowerCase().replace(/(?:^|\s|-)\S/g, function(a) { return a.toUpperCase(); });
    }
});
</script>
