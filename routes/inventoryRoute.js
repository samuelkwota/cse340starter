// Needed Resources 
const express = require("express")
const router = new express.Router() 
const invController = require("../controllers/invController")
// Route to build inventory by classification view
router.get("/type/:classificationId", invController.buildByClassificationId);

router.get("/type/:classificationId", (req, res, next) => {
    console.log("Route accessed with classificationId:", req.params.classificationId)
    invController.buildByClassificationId(req, res, next)
  })
  
module.exports = router;