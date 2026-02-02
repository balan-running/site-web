---
title: "Nos records"
permalink: /records/
---

# Records du club

<style>
/* Conteneur pour le scroll horizontal sur mobile */
.records-container { 
  overflow-x: auto; 
  margin-bottom: 2rem; 
  box-shadow: 0 4px 10px rgba(0,0,0,0.05); 
}

.records-table { 
  width: 100%; 
  border-collapse: collapse; 
  font-family: sans-serif; 
  min-width: 800px; 
}

/* --- LES BORDURES JAUNES --- */
.records-table th, 
.records-table td { 
  padding: 12px; 
  text-align: center;
  border: 1px solid rgb(255, 230, 35); /* Jaune */
}

/* L'EN-TÊTE (Violet du club) */
.records-table thead tr { 
  background-color: rgb(191, 61, 206); 
  color: #fff; 
  text-transform: uppercase; 
  font-weight: bold;
  border-bottom: 2px solid rgb(255, 230, 35); 
}

/* LIGNES ZÉBRÉES (Gris très pâle) */
.records-table tbody tr:nth-child(even) { 
  background-color: #f9f9f9; 
}
/* SURVOL (Jaune très pâle) */
.records-table tbody tr:hover { 
  background-color: rgba(255, 230, 35, 0.1); 
}

/* COLONNE EPREUVE */
.col-epreuve { 
  font-weight: bold; 
  text-align: left !important; 
  background: #fff;
  min-width: 150px;
}

/* PERFORMANCE (Violet) */
.col-perf { 
  font-weight: bold; 
  color: rgb(191, 61, 206); 
}

/* --- SÉPARATION H/F (Grosse ligne Jaune) --- */
.col-sep { 
  border-left: 4px solid rgb(255, 230, 35) !important; 
}

/* --- SECTION (CHANGEMENT ICI : Gris clair + Texte noir) --- */
.section-row { 
  background-color: #e0e0e0 !important; /* Gris clair */
  color: #000 !important; /* Texte noir */
  font-weight: bold; 
  letter-spacing: 2px; 
  text-align: center !important;
  text-transform: uppercase;
  border: 1px solid rgb(255, 230, 35);
}
</style>

<div class="records-container">
<table class="records-table">
  <thead>
    <tr>
      <th rowspan="2" style="border-bottom: none;">Epreuve</th>
      <th colspan="3">Hommes</th>
      <th colspan="3" class="col-sep">Femmes</th>
    </tr>
    <tr>
      <th>Athlète</th> <th>Perf.</th> <th>Année</th>
      <th class="col-sep">Athlète</th> <th>Perf.</th> <th>Année</th>
    </tr>
  </thead>
  <tbody>
    {% for row in site.data.records %}
      {% if row.section %}
        <tr>
          <td colspan="7" class="section-row">{{ row.section }}</td>
        </tr>
      {% else %}
        <tr>
          <td class="col-epreuve">{{ row.epreuve }}</td>
          
          <td>{{ row.h_ath | default: "-" }}</td>
          <td class="col-perf">{{ row.h_perf | default: "-" }}</td>
          <td>{{ row.h_an | default: "-" }}</td>
          
          <td class="col-sep">{{ row.f_ath | default: "-" }}</td>
          <td class="col-perf">{{ row.f_perf | default: "-" }}</td>
          <td>{{ row.f_an | default: "-" }}</td>
        </tr>
      {% endif %}
    {% endfor %}
  </tbody>
</table>
</div>
